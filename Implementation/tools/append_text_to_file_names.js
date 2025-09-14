const fs = require('fs');
const path = require('path');

// ========== CONFIGURATION ==========
const config = {
  targetDirectory: '../lib/features/tasks_management/domain/usecases/', // Use absolute path or fix relative path
  textToAppend: '_use_case',
  fileExtensions: ['.dart'], // Added Dart files since you're working with Flutter
  dryRun: false,
  excludeScript: true,
  matchMode: 'endsWith',
  caseSensitive: false,
};

// ========== IMPLEMENTATION ==========
const scriptFilePath = __filename;

// Resolve the target directory relative to the script's location
const resolvedTargetDir = path.resolve(__dirname, config.targetDirectory);

function shouldProcessFile(filePath) {
  const ext = path.extname(filePath).toLowerCase();

  if (config.fileExtensions.length > 0 && !config.fileExtensions.includes(ext)) {
    return false;
  }

  if (config.excludeScript && path.resolve(filePath) === path.resolve(scriptFilePath)) {
    return false;
  }

  return true;
}

function fileAlreadyHasText(filePath, text) {
  const fileName = path.basename(filePath);
  const extension = path.extname(filePath);
  const nameWithoutExt = path.basename(filePath, extension);

  const searchText = config.caseSensitive ? text : text.toLowerCase();
  const filenameToCheck = config.caseSensitive ? nameWithoutExt : nameWithoutExt.toLowerCase();

  switch (config.matchMode) {
    case 'endsWith':
      return filenameToCheck.endsWith(searchText);
    case 'includes':
      return filenameToCheck.includes(searchText);
    case 'exact':
      return filenameToCheck === searchText;
    default:
      return filenameToCheck.endsWith(searchText);
  }
}

function processDirectory(dir) {
  try {
    console.log(`📁 Scanning: ${dir}`);
    const items = fs.readdirSync(dir, { withFileTypes: true });

    if (items.length === 0) {
      console.log(`   No items found in ${dir}`);
      return;
    }

    let fileCount = 0;
    let dirCount = 0;

    items.forEach(item => {
      const itemPath = path.join(dir, item.name);

      if (item.isDirectory()) {
        dirCount++;
        processDirectory(itemPath);
      } else if (item.isFile() && shouldProcessFile(itemPath)) {
        fileCount++;
        renameFile(itemPath);
      }
    });

    console.log(`   Found ${dirCount} directories and ${fileCount} files`);
  } catch (error) {
    console.error(`❌ Error reading directory ${dir}:`, error.message);
  }
}

function renameFile(filePath) {
  const dir = path.dirname(filePath);
  const fileName = path.basename(filePath);
  const extension = path.extname(filePath);
  const nameWithoutExt = path.basename(filePath, extension);

  // Skip if file already has the text based on matching rules
  if (fileAlreadyHasText(filePath, config.textToAppend)) {
    console.log(`   ⏭️  Skipped (already has text): ${fileName}`);
    return;
  }

  const newFileName = nameWithoutExt + config.textToAppend + extension;
  const newFilePath = path.join(dir, newFileName);

  if (config.dryRun) {
    console.log(`   ✅ [DRY RUN] Would rename: ${fileName} -> ${newFileName}`);
  } else {
    try {
      fs.renameSync(filePath, newFilePath);
      console.log(`   ✅ Renamed: ${fileName} -> ${newFileName}`);
    } catch (error) {
      console.error(`   ❌ Error renaming ${fileName}:`, error.message);
    }
  }
}

// ========== EXECUTION ==========
try {
  console.log(`🎯 Target directory: ${resolvedTargetDir}`);
  console.log(`📝 Current working directory: ${process.cwd()}`);

  if (!fs.existsSync(resolvedTargetDir)) {
    console.error(`❌ Directory does not exist: ${resolvedTargetDir}`);
    console.log('\n💡 Troubleshooting tips:');
    console.log('   - Check if the path is correct relative to this script');
    console.log('   - Try using an absolute path instead of relative path');
    console.log('   - Make sure the directory exists and has proper permissions');
    process.exit(1);
  }

  const stats = fs.statSync(resolvedTargetDir);
  if (!stats.isDirectory()) {
    console.error(`❌ Path is not a directory: ${resolvedTargetDir}`);
    process.exit(1);
  }

  console.log(`✏️  Text to append: "${config.textToAppend}"`);
  console.log(`🔍 File extensions: ${config.fileExtensions.join(', ') || 'all'}`);
  console.log(`🎯 Match mode: ${config.matchMode}`);
  console.log(`🔤 Case sensitive: ${config.caseSensitive}`);
  console.log(`🧪 Dry run: ${config.dryRun}`);
  console.log('─'.repeat(60));

  processDirectory(resolvedTargetDir);

  if (config.dryRun) {
    console.log('\n--- DRY RUN COMPLETED ---');
    console.log('Set "dryRun: false" to actually rename files.');
  } else {
    console.log('\n✅ File renaming completed!');
  }
} catch (error) {
  console.error('❌ An error occurred:', error);
}