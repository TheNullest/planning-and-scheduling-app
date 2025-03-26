require('dotenv').config();
const path = require('path');
const axios = require('axios');
const { set, get, has, cloneDeep, forOwn, unset } = require('lodash');
const fse = require('fs-extra');

// Configuration
const CONFIG = {
  baseLang: 'en',
  targetLangs: ['ar', 'fa'],
  translationsDir: path.join(__dirname, '../'),
  placeholder: 'TRANSLATION_NEEDED',
  dryRun: false,
  autoTranslate: true,
  translationServices: ['mymemory', 'libretranslate'],
  rateLimitDelay: 3000, // Increased delay
  maxRetries: 5,
  cacheFile: path.join(__dirname, 'translation-cache.json') // Added cache
};

// Initialize translation cache
let translationCache = {};
if (fse.existsSync(CONFIG.cacheFile)) {
  translationCache = fse.readJsonSync(CONFIG.cacheFile);
}

// Configure services with valid parameters
const SERVICES = {
  mymemory: {
    url: 'https://api.mymemory.translated.net/get',
    params: (text, targetLang) => ({
      q: text,
      langpair: `en|${targetLang}`,
      de: 'moien.janlou@outlook.com'
    }),
    extract: (data) => data.responseData?.translatedText
  },
  libretranslate: {
    url: 'https://libretranslate.com/translate',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
    data: (text, targetLang) => ({
      q: text,
      source: 'en',
      target: targetLang,
      format: 'text'
    }),
    extract: (data) => data.translatedText
  }
};
class TranslationService {
  constructor() {
    this.serviceIndex = 0;
    this.requestCount = 0;
  }

  async translate(text, targetLang) {
    const cacheKey = `${targetLang}:${text}`;

    // Check cache first
    if (translationCache[cacheKey]) {
      return translationCache[cacheKey];
    }

    if (!text || typeof text !== 'string') {
      console.error('Invalid translation text:', text);
      return null;
    }

    let attempts = 0;
    while (attempts < CONFIG.maxRetries) {
      const serviceName = CONFIG.translationServices[this.serviceIndex];
      const service = SERVICES[serviceName];

      try {
        console.log(`Attempting translation via ${serviceName}:`, text.substring(0, 50));
        const response = await this.makeRequest(service, text, targetLang);
        this.requestCount++;

        const translated = service.extract(response.data);
        if (translated && translated !== text) {
          console.log(`Translated: ${text.substring(0, 30)} → ${translated.substring(0, 30)}`);
          // Save to cache
          translationCache[cacheKey] = translated;
          fse.writeJsonSync(CONFIG.cacheFile, translationCache, { spaces: 2 });
          return translated;
        }
      } catch (error) {
        console.error(`${serviceName} error:`, error.message);
      }

      this.rotateService();
      attempts++;
      await new Promise(resolve => setTimeout(resolve, CONFIG.rateLimitDelay * (attempts + 1)));
    }
    return null;
  }

  rotateService() {
    this.serviceIndex = (this.serviceIndex + 1) % CONFIG.translationServices.length;
  }

  async makeRequest(service, text, targetLang) {
    const config = {
      method: service.method || 'get',
      url: service.url,
      timeout: 15000, // Increased timeout
      headers: service.headers || {}
    };

    if (service.method === 'post') {
      config.data = service.data(text, targetLang);
    } else {
      config.params = service.params(text, targetLang);
    }

    return axios(config);
  }
}

async function translateMissingKeys(content, missingKeys, targetLang, currentFile) {
  const translator = new TranslationService();

  for (const key of missingKeys) {
    const baseValue = getBaseValue(key, currentFile);
    if (!baseValue || baseValue === CONFIG.placeholder) {
      continue;
    }

    // Skip if already has valid translation
    if (get(content, key) !== CONFIG.placeholder) continue;

    try {
      const translated = await translator.translate(baseValue, targetLang);
      set(content, key, translated || `${CONFIG.placeholder}_FAILED`);
      await new Promise(resolve => setTimeout(resolve, CONFIG.rateLimitDelay));
    } catch (error) {
      console.error(`Failed to translate "${baseValue.substring(0, 30)}...": ${error.message}`);
    }
  }
}

// Core synchronization functions
async function getBaseFiles() {
  const basePath = path.join(CONFIG.translationsDir, CONFIG.baseLang);
  try {
    const files = await fse.readdir(basePath);
    return files.filter(file => path.extname(file) === '.json');
  } catch (error) {
    console.error('Error reading base files:', error);
    throw error;
  }
}

function deepSync(base, target) {
  const merged = cloneDeep(target);
  const changes = { added: [], removed: [] };

  function syncObjects(baseObj, targetObj, currentPath = '') {
    forOwn(baseObj, (value, key) => {
      const fullPath = currentPath ? `${currentPath}.${key}` : key;
      if (!has(targetObj, key)) {
        set(merged, fullPath, typeof value === 'object' ? createStructure(value) : CONFIG.placeholder);
        changes.added.push(fullPath);
      } else if (typeof value === 'object' && !Array.isArray(value)) {
        syncObjects(value, get(targetObj, key, {}), fullPath);
      }
    });

    forOwn(targetObj, (value, key) => {
      const fullPath = currentPath ? `${currentPath}.${key}` : key;
      if (!has(baseObj, key)) {
        unset(merged, fullPath);
        changes.removed.push(fullPath);
      } else if (typeof value === 'object' && !Array.isArray(value)) {
        syncObjects(get(baseObj, key, {}), value, fullPath);
      }
    });
  }

  syncObjects(base, merged);
  return { merged, changes };
}

function createStructure(obj) {
  return Object.keys(obj).reduce((acc, key) => {
    acc[key] = typeof obj[key] === 'object' ? createStructure(obj[key]) : CONFIG.placeholder;
    return acc;
  }, Array.isArray(obj) ? [] : {});
}

async function processLanguage(lang, baseFiles) {
  const langPath = path.join(CONFIG.translationsDir, lang);
  await fse.ensureDir(langPath);
  console.log(`\n=== Processing ${lang.toUpperCase()} ===`);

  for (const file of baseFiles) {
    await processFile(lang, file, langPath);
  }
}

async function processFile(lang, file, langPath) {
  const baseFilePath = path.join(CONFIG.translationsDir, CONFIG.baseLang, file);
  const langFilePath = path.join(langPath, file);

  console.log(`\nProcessing: ${file}`);

  const baseContent = await fse.readJson(baseFilePath);
  let langContent = await fse.readJson(langFilePath).catch(() => ({}));

  const { merged, changes } = deepSync(baseContent, langContent);
  logChanges(changes);

  if (CONFIG.autoTranslate && changes.added.length > 0) {
    console.log(`Translating ${changes.added.length} new keys...`);
    await translateMissingKeys(merged, changes.added, lang, file);
  }

  if (!CONFIG.dryRun) {
    await fse.writeJson(langFilePath, merged, { spaces: 2 });
    console.log(`✔ Saved: ${path.relative(process.cwd(), langFilePath)}`);
  }
}


function getBaseValue(key, currentFile) {
  const baseFilePath = path.join(CONFIG.translationsDir, CONFIG.baseLang, currentFile);
  try {
    const baseContent = require(baseFilePath);
    const value = get(baseContent, key);

    if (typeof value !== 'string') {
      console.warn(`Invalid base value for ${key}:`, typeof value);
      return null;
    }

    return value.trim();
  } catch (error) {
    console.error(`Error loading base file ${currentFile}: ${error.message}`);
    return null;
  }
}

function logChanges(changes) {
  if (changes.added.length > 0) console.log(`New keys: ${changes.added.length}`);
  if (changes.removed.length > 0) console.log(`Removed keys: ${changes.removed.length}`);
}

async function main() {
  try {
    console.log('🚀 Starting translation sync');
    const baseFiles = await getBaseFiles();
    console.log('Base files:', baseFiles.join(', '));

    for (const lang of CONFIG.targetLangs) {
      await processLanguage(lang, baseFiles);
    }

    console.log('\n🎉 Sync complete!');
  } catch (error) {
    console.error('\n💥 Error:', error.message);
    process.exit(1);
  }
}

main();