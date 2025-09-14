const fs = require('fs');
const path = require('path');

// Base directory where the operation will start
const baseDir = path.join(__dirname, '../lib');

// Words to replace - make sure spelling/case here matches what you want to replace
const targetWord = "TODO[Enhance]";      // <-- fix spelling / case as needed
const replacementWord = 'TODO[Enhancement]';

// =============================================
// REPLACEMENT CONDITION OPTIONS - CHOOSE MULTIPLE
// =============================================
// Options: 'exact' | 'before-underline' | 'before-uppercase' | 'whole-word' | 'substring' | 'contains'
// Or use these predefined sets:
// const REPLACEMENT_CONDITIONS = ['exact']; // Only exact matches
// const REPLACEMENT_CONDITIONS = ['exact', 'before-uppercase']; // Exact + camelCase
// const REPLACEMENT_CONDITIONS = ['before-underline', 'before-uppercase']; // Only patterns
// const REPLACEMENT_CONDITIONS = ['exact', 'before-underline', 'before-uppercase', 'substring', 'contains']; // ALL
const REPLACEMENT_CONDITIONS = ['exact', 'before-underline', 'before-uppercase', 'substring']; // choose
const CASE_INSENSITIVE = true; // set to false if you want case-sensitive replacements

// Absolute path to this script file
const scriptFilePath = path.resolve(__filename);

// File extensions to process for content replacement
const codeExtensions = new Set([
  '.dart', '.js', '.ts', '.jsx', '.tsx', '.json', '.yaml', '.yml',
  '.xml', '.html', '.css', '.scss', '.md', '.txt', '.py', '.java',
  '.kt', '.swift', '.c', '.cpp', '.h', '.cs', '.php', '.rb', '.go'
]);

// Build combined pattern string (no flags here)
function getCombinedReplacementPatternString(target, conditions) {
  const patterns = [];
  const effectiveConditions = conditions && conditions.length > 0 ? conditions : ['exact'];
  const escaped = escapeRegExp(target);
  const hasSpaces = /\s/.test(target);

  if (effectiveConditions.includes('exact')) {
    patterns.push(hasSpaces ? escaped : `\\b${escaped}\\b`);
  }

  if (effectiveConditions.includes('whole-word') && !hasSpaces) {
    patterns.push(`(?<![a-zA-Z0-9_])${escaped}(?![a-zA-Z0-9_])`);
  }

  if (effectiveConditions.includes('before-underline') && !hasSpaces) {
    patterns.push(`${escaped}(?=_)`);
  }

  if (effectiveConditions.includes('before-uppercase') && !hasSpaces) {
    patterns.push(`${escaped}(?=[A-Z])`);
  }

  if (effectiveConditions.includes('substring')) {
    patterns.push(escaped);
  }

  return patterns.join('|');
}


// Create RegExp with flags
function getCombinedReplacementRegex(target, conditions) {
  const patternStr = getCombinedReplacementPatternString(target, conditions);
  const flags = CASE_INSENSITIVE ? 'gi' : 'g';
  return new RegExp(patternStr, flags);
}

function shouldProcessFile(filePath) {
  const ext = path.extname(filePath).toLowerCase();
  return codeExtensions.has(ext);
}

function processDirectory(dir) {
  let items;
  try {
    items = fs.readdirSync(dir, { withFileTypes: true });
  } catch (err) {
    console.error(`Failed to read dir ${dir}: ${err.message}`);
    return;
  }

  // Use slice to avoid mutation during iteration issues
  for (const item of items.slice()) {
    const itemPath = path.join(dir, item.name);

    // Skip this script file
    if (path.resolve(itemPath) === scriptFilePath) continue;

    if (item.isDirectory()) {
      let newDirPath = itemPath;

      // Use regex to check name (so case-insensitive works)
      const nameRegex = getCombinedReplacementRegex(targetWord, REPLACEMENT_CONDITIONS);
      if (nameRegex.test(item.name)) {
        const newDirName = item.name.replace(nameRegex, replacementWord);
        newDirPath = path.join(dir, newDirName);

        if (newDirPath !== itemPath) {
          try {
            fs.renameSync(itemPath, newDirPath);
            console.log(`Renamed folder: ${itemPath} -> ${newDirPath}`);
          } catch (err) {
            console.error(`Failed to rename folder ${itemPath}: ${err.message}`);
            // continue and try to process original path to avoid skipping
            newDirPath = itemPath;
          }
        }
      }

      // Recurse into the (possibly renamed) directory
      processDirectory(newDirPath);
    }

    if (item.isFile()) {
      let newFilePath = itemPath;

      // Use regex for file name replacement too (case-insensitive supported)
      const fileNameRegex = getCombinedReplacementRegex(targetWord, REPLACEMENT_CONDITIONS);
      if (fileNameRegex.test(item.name)) {
        const newFileName = item.name.replace(fileNameRegex, replacementWord);
        newFilePath = path.join(dir, newFileName);

        if (newFilePath !== itemPath) {
          try {
            fs.renameSync(itemPath, newFilePath);
            console.log(`Renamed file: ${itemPath} -> ${newFilePath}`);
          } catch (err) {
            console.error(`Failed to rename file ${itemPath}: ${err.message}`);
            newFilePath = itemPath;
          }
        }
      }

      // Replace in content for code files
      if (shouldProcessFile(newFilePath)) {
        replaceInFile(newFilePath);
      }
    }
  }
}

function replaceInFile(filePath) {
  try {
    const fileContent = fs.readFileSync(filePath, 'utf8');
    const regex = getCombinedReplacementRegex(targetWord, REPLACEMENT_CONDITIONS);

    // Quick test
    if (!regex.test(fileContent)) {
      return; // nothing to do
    }

    // Reset lastIndex because we used test() on global regex
    regex.lastIndex = 0;

    // Show a few matches for debugging (up to 5)
    const matches = [];
    let m;
    while ((m = regex.exec(fileContent)) && matches.length < 5) {
      matches.push({ match: m[0], index: m.index });
    }
    console.log(`Found ${matches.length} sample matches in ${filePath}:`, matches.map(x => x.match));

    // Actually replace
    regex.lastIndex = 0;
    const updated = fileContent.replace(regex, replacementWord);
    fs.writeFileSync(filePath, updated, 'utf8');
    console.log(`Updated file content: ${filePath}`);
  } catch (error) {
    console.error(`Error processing file ${filePath}:`, error.message);
  }
}

function escapeRegExp(string) {
  return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
}


// Run
try {
  console.log(`\nStarting replacement with conditions: ${REPLACEMENT_CONDITIONS.join(', ')}`);
  processDirectory(baseDir);
  console.log('✅ Replacement completed successfully!');
} catch (error) {
  console.error('❌ Operation failed:', error);
}
