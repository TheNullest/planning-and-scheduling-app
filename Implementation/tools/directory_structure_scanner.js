const fs = require('fs');
const path = require('path');

// =============================================
// CONFIGURATION - Set your directory path here!
// =============================================
const TARGET_DIRECTORY = path.join(__dirname, '../lib');  // ← Change this to your project path
const MAX_DEPTH = 10;              // ← Change this to limit depth
const EXCLUDE_DIRS = ['build', '.dart_tool', '.git', 'node_modules']; // ← Directories to exclude
// =============================================

function scanDirectory(dirPath, indent = 0, currentDepth = 0) {
    if (currentDepth > MAX_DEPTH) return '';

    const indentStr = '  '.repeat(indent);
    let result = '';

    try {
        const items = fs.readdirSync(dirPath, { withFileTypes: true });

        // Filter out excluded directories
        const filteredItems = items.filter(item =>
            !EXCLUDE_DIRS.includes(item.name)
        );

        // Sort: directories first, then files
        filteredItems.sort((a, b) => {
            if (a.isDirectory() && !b.isDirectory()) return -1;
            if (!a.isDirectory() && b.isDirectory()) return 1;
            return a.name.localeCompare(b.name);
        });

        for (let i = 0; i < filteredItems.length; i++) {
            const item = filteredItems[i];
            const isLast = i === filteredItems.length - 1;
            const prefix = isLast ? '└── ' : '├── ';

            if (item.isDirectory()) {
                result += `${indentStr}${prefix}📁 ${item.name}/\n`;
                result += scanDirectory(
                    path.join(dirPath, item.name),
                    indent + (isLast ? 4 : 4),
                    currentDepth + 1
                );
            } else {
                const fileExt = path.extname(item.name);
                const icon = getFileIcon(fileExt, item.name);
                result += `${indentStr}${prefix}${icon} ${item.name}\n`;
            }
        }
    } catch (error) {
        if (error.code === 'EACCES') {
            result += `${indentStr}❌ [Permission denied]\n`;
        } else if (error.code === 'ENOENT') {
            result += `${indentStr}❌ [Directory doesn't exist]\n`;
        } else {
            result += `${indentStr}❌ [Error: ${error.message}]\n`;
        }
    }

    return result;
}

function getFileIcon(extension, filename) {
    const icons = {
        '.dart': '🎯',
        '.js': '📜',
        '.ts': '🔷',
        '.py': '🐍',
        '.java': '☕',
        '.kt': '⚡',
        '.swift': '🐦',
        '.xml': '📋',
        '.json': '📄',
        '.yaml': '⚙️',
        '.yml': '⚙️',
        '.md': '📖',
        '.txt': '📝',
        '.gitignore': '👁️',
    };

    // Special files
    if (filename === 'pubspec.yaml') return '📦';
    if (filename === 'README.md') return '📚';

    return icons[extension] || '📄';
}

// Main execution
console.log('🌳 Directory Structure Scanner\n');
console.log(`📂 Target: ${path.resolve(TARGET_DIRECTORY)}`);
console.log(`📏 Max Depth: ${MAX_DEPTH}`);
console.log(`🚫 Excluding: ${EXCLUDE_DIRS.join(', ')}\n`);
console.log('=' .repeat(50));

const structure = scanDirectory(TARGET_DIRECTORY);

if (structure) {
    console.log(structure);
} else {
    console.log('No structure found or directory is empty.');
}

console.log('=' .repeat(50));

// Show summary
try {
    const countItems = (dirPath) => {
        let files = 0;
        let folders = 0;

        const items = fs.readdirSync(dirPath, { withFileTypes: true });

        for (const item of items) {
            if (EXCLUDE_DIRS.includes(item.name)) continue;

            if (item.isDirectory()) {
                folders++;
                const counts = countItems(path.join(dirPath, item.name));
                files += counts.files;
                folders += counts.folders;
            } else {
                files++;
            }
        }

        return { files, folders };
    };

    const counts = countItems(TARGET_DIRECTORY);
    console.log(`📊 Summary: ${counts.folders} folders, ${counts.files} files`);
} catch (error) {
    console.log('📊 Summary: Could not calculate file count');
}