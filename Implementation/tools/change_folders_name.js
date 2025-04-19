const fs = require('fs');
const path = require('path');

// Base directory where the folders are located
const baseDir = path.join(__dirname, '../lib/features');

// Function to recursively rename folders
function renameFolders(dir) {
  // Read all items in the directory
  const items = fs.readdirSync(dir, { withFileTypes: true });

  items.forEach(item => {
    const itemPath = path.join(dir, item.name);

    // If it's a directory, check if it contains 'viewmodels'
    if (item.isDirectory()) {
      if (item.name.includes('viewmodels')) {
        const newFolderName = item.name.replace('viewmodels', 'blocs');
        const newFolderPath = path.join(dir, newFolderName);

        // Rename the folder
        fs.renameSync(itemPath, newFolderPath);
        console.log(`Renamed: ${itemPath} -> ${newFolderPath}`);

        // Continue renaming inside the renamed folder
        renameFolders(newFolderPath);
      } else {
        // Recursively check subdirectories
        renameFolders(itemPath);
      }
    }
  });
}

// Start renaming from the base directory
renameFolders(baseDir);

console.log('Folder renaming completed!');