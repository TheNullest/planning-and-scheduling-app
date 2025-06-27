const fs = require('fs');
const path = require('path');

const TARGET_IMPORT = `import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';`;
const TARGET_SYMBOL = 'HiveBaseTypeAdapter';
const FILE_EXTENSION = '.dart';

const targetDir = path.resolve(__dirname, '../lib/');

function walkDir(dir, callback) {
  fs.readdirSync(dir).forEach(f => {
    const filePath = path.join(dir, f);
    const isDirectory = fs.statSync(filePath).isDirectory();
    isDirectory ? walkDir(filePath, callback) : callback(filePath);
  });
}

function extractMainFilePath(content, partFilePath) {
  const match = content.match(/part of\s+'(.+?)';/);
  if (!match) return null;
  const mainFileName = match[1];
  const partDir = path.dirname(partFilePath);
  return path.resolve(partDir, mainFileName);
}

function addImportToMainFile(mainFilePath) {
  if (!fs.existsSync(mainFilePath)) return;

  let content = fs.readFileSync(mainFilePath, 'utf8');
  if (content.includes(TARGET_IMPORT)) return; // Already imported

  const lines = content.split('\n');
  const firstImportIndex = lines.findIndex(line => line.trim().startsWith('import'));

  if (firstImportIndex !== -1) {
    lines.splice(firstImportIndex, 0, TARGET_IMPORT);
  } else {
    lines.unshift(TARGET_IMPORT);
  }

  fs.writeFileSync(mainFilePath, lines.join('\n'), 'utf8');
  console.log(`✅ Added import to: ${mainFilePath}`);
}

function processFile(filePath) {
  if (!filePath.endsWith(FILE_EXTENSION)) return;

  const content = fs.readFileSync(filePath, 'utf8');
  if (!content.includes(TARGET_SYMBOL)) return;

  const mainFilePath = extractMainFilePath(content, filePath);
  if (mainFilePath) {
    addImportToMainFile(mainFilePath);
  } else {
    if (!content.includes(TARGET_IMPORT)) {
      const lines = content.split('\n');
      const firstImportIndex = lines.findIndex(line => line.trim().startsWith('import'));
      if (firstImportIndex !== -1) {
        lines.splice(firstImportIndex, 0, TARGET_IMPORT);
      } else {
        lines.unshift(TARGET_IMPORT);
      }
      fs.writeFileSync(filePath, lines.join('\n'), 'utf8');
      console.log(`✅ Added import to: ${filePath}`);
    }
  }
}

walkDir(targetDir, processFile);
console.log('✅ Scan complete.');
