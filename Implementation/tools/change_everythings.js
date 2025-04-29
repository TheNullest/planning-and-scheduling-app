const fs = require('fs');
const path = require('path');

// Base directory where the operation will start
const baseDir = path.join(__dirname, '../lib/');

// Words to replace
const targetWord = 'schuduled';
const replacementWord = 'scheduled';

// Function to recursively process folders and files
function processDirectory(dir) {
  const items = fs.readdirSync(dir, { withFileTypes: true });

  items.forEach(item => {
    const itemPath = path.join(dir, item.name);

    // If it's a directory, rename it if necessary and process its contents
    if (item.isDirectory()) {
      let newDirPath = itemPath;

      if (item.name.includes(targetWord)) {
        const newDirName = item.name.replace(targetWord, replacementWord);
        newDirPath = path.join(dir, newDirName);
        fs.renameSync(itemPath, newDirPath);
        console.log(`Renamed folder: ${itemPath} -> ${newDirPath}`);
      }

      // Recursively process the renamed directory
      processDirectory(newDirPath);
    }

    // If it's a file, rename it if necessary and update its contents
    if (item.isFile()) {
      let newFilePath = itemPath;

      if (item.name.includes(targetWord)) {
        const newFileName = item.name.replace(targetWord, replacementWord);
        newFilePath = path.join(dir, newFileName);
        fs.renameSync(itemPath, newFilePath);
        console.log(`Renamed file: ${itemPath} -> ${newFilePath}`);
      }

      // Replace target word in the file contents
      replaceInFile(newFilePath);
    }
  });
}

// Function to replace target word in file contents
function replaceInFile(filePath) {
  const fileContent = fs.readFileSync(filePath, 'utf8');
  if (fileContent.includes(targetWord)) {
    const updatedContent = fileContent.replace(new RegExp(targetWord, 'g'), replacementWord);
    fs.writeFileSync(filePath, updatedContent, 'utf8');
    console.log(`Updated file content: ${filePath}`);
  }
}

// Start processing from the base directory
processDirectory(baseDir);

console.log('Replacement operation completed!');