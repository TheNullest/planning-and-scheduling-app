
const fs = require('fs');
const path = require('path');

// const structure = [
//   // Core Layer
//   { folder:   'lib/core/config' },
//   { folder:   'lib/core/extensions' },
//   { folder:   'lib/core/errors' },
//   { folder:   'lib/core/usecases' },
//   { folder:   'lib/core/datasources' },
//   { folder:   'lib/core/repositories' },
//   { folder:   'lib/core/utils' },

//   // main task
//   // Data Layer
//   { folder: 'lib/features/task/data/models' },
//   { folder: 'lib/features/task/data/datasources' },
//   { folder: 'lib/features/task/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/task/domain/entities' },
//   { folder: 'lib/features/task/domain/repositories' },
//   { folder: 'lib/features/task/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/task/presentation/views' },
//   { folder: 'lib/features/task/presentation/viewmodels' },
//   { folder: 'lib/features/task/presentation/widgets' },

//   // category
//   // Data Layer
//   { folder: 'lib/features/category/data/models' },
//   { folder: 'lib/features/category/data/datasources' },
//   { folder: 'lib/features/category/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/category/domain/entities' },
//   { folder: 'lib/features/category/domain/repositories' },
//   { folder: 'lib/features/category/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/category/presentation/views' },
//   { folder: 'lib/features/category/presentation/viewmodels' },
//   { folder: 'lib/features/category/presentation/widgets' },

//   // goal
//   // Data Layer
//   { folder: 'lib/features/goal/data/models' },
//   { folder: 'lib/features/goal/data/datasources' },
//   { folder: 'lib/features/goal/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/goal/domain/entities' },
//   { folder: 'lib/features/goal/domain/repositories' },
//   { folder: 'lib/features/goal/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/goal/presentation/views' },
//   { folder: 'lib/features/goal/presentation/viewmodels' },
//   { folder: 'lib/features/goal/presentation/widgets' },

//   // measurement unit
//   // Data Layer
//   { folder: 'lib/features/measurement_unit/data/models' },
//   { folder: 'lib/features/measurement_unit/data/datasources' },
//   { folder: 'lib/features/measurement_unit/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/measurement_unit/domain/entities' },
//   { folder: 'lib/features/measurement_unit/domain/repositories' },
//   { folder: 'lib/features/measurement_unit/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/measurement_unit/presentation/views' },
//   { folder: 'lib/features/measurement_unit/presentation/viewmodels' },
//   { folder: 'lib/features/measurement_unit/presentation/widgets' },

//   // sub task
//   // Data Layer
//   { folder: 'lib/features/sub_task/data/models' },
//   { folder: 'lib/features/sub_task/data/datasources' },
//   { folder: 'lib/features/sub_task/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/sub_task/domain/entities' },
//   { folder: 'lib/features/sub_task/domain/repositories' },
//   { folder: 'lib/features/sub_task/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/sub_task/presentation/views' },
//   { folder: 'lib/features/sub_task/presentation/viewmodels' },
//   { folder: 'lib/features/sub_task/presentation/widgets'},

//   // tag
//   // Data Layer
//   { folder: 'lib/features/tag/data/models' },
//   { folder: 'lib/features/tag/data/datasources' },
//   { folder: 'lib/features/tag/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/tag/domain/entities' },
//   { folder: 'lib/features/tag/domain/repositories' },
//   { folder: 'lib/features/tag/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/tag/presentation/views' },
//   { folder: 'lib/features/tag/presentation/viewmodels' },
//   { folder: 'lib/features/tag/presentation/widgets'},

//   // task scheduler
//   // Data Layer
//   { folder: 'lib/features/task_scheduler/data/models' },
//   { folder: 'lib/features/task_scheduler/data/datasources' },
//   { folder: 'lib/features/task_scheduler/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/task_scheduler/domain/entities' },
//   { folder: 'lib/features/task_scheduler/domain/repositories' },
//   { folder: 'lib/features/task_scheduler/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/task_scheduler/presentation/views' },
//   { folder: 'lib/features/task_scheduler/presentation/viewmodels' },
//   { folder: 'lib/features/task_scheduler/presentation/widgets'},

//   // time interval
//   // Data Layer
//   { folder: 'lib/features/time_interval/data/models' },
//   { folder: 'lib/features/time_interval/data/datasources' },
//   { folder: 'lib/features/time_interval/data/repositories' },
//   // Domain Layer
//   { folder: 'lib/features/time_interval/domain/entities' },
//   { folder: 'lib/features/time_interval/domain/repositories' },
//   { folder: 'lib/features/time_interval/domain/usecases' },
//   // Presentation Layer
//   { folder: 'lib/features/time_interval/presentation/views' },
//   { folder: 'lib/features/time_interval/presentation/viewmodels' },
//   { folder: 'lib/features/time_interval/presentation/widgets'},
// ];

// structure.forEach(item => {
//   const folderPath = path.join(__dirname, item.folder);
//   const filePath = path.join(folderPath, item.file);

//   // Create the folder if it doesn't exist
//   fs.mkdirSync(folderPath, { recursive: true });

//   // Create the file if it doesn't exist
//   if (!fs.existsSync(filePath)) {
//     fs.writeFileSync(filePath, '', 'utf8');
//   }
// });

// console.log('Clean Architecture folders and files created successfully!');

// const folders = [
//   // Core Layer
//     'lib/core/config' ,
//     'lib/core/extensions' ,
//     'lib/core/errors' ,
//     'lib/core/usecases' ,
//     'lib/core/datasources' ,
//     'lib/core/repositories' ,
//     'lib/core/utils' ,

//   // main task
//   // Data Layer
//   'lib/features/task/data/models' ,
//   'lib/features/task/data/datasources' ,
//   'lib/features/task/data/repositories' ,
//   // Domain Layer
//   'lib/features/task/domain/entities' ,
//   'lib/features/task/domain/repositories' ,
//   'lib/features/task/domain/usecases' ,
//   // Presentation Layer
//    'lib/features/task/presentation/views' ,
//    'lib/features/task/presentation/viewmodels' ,
//    'lib/features/task/presentation/widgets' ,

//   // category
//   // Data Layer
//    'lib/features/category/data/models' ,
//    'lib/features/category/data/datasources' ,
//    'lib/features/category/data/repositories' ,
//   // Domain Layer
//    'lib/features/category/domain/entities' ,
//    'lib/features/category/domain/repositories' ,
//    'lib/features/category/domain/usecases' ,
//   // Presentation Layer
//   'lib/features/category/presentation/views' ,
//   'lib/features/category/presentation/viewmodels' ,
//   'lib/features/category/presentation/widgets' ,

//   // goal
//   // Data Layer
//    'lib/features/goal/data/models' ,
//    'lib/features/goal/data/datasources' ,
//    'lib/features/goal/data/repositories' ,
//   // Domain Layer
//    'lib/features/goal/domain/entities' ,
//    'lib/features/goal/domain/repositories' ,
//    'lib/features/goal/domain/usecases' ,
//   // Presentation Layer
//    'lib/features/goal/presentation/views' ,
//    'lib/features/goal/presentation/viewmodels' ,
//    'lib/features/goal/presentation/widgets' ,

//   // measurement unit
//   // Data Layer
//    'lib/features/measurement_unit/data/models' ,
//    'lib/features/measurement_unit/data/datasources' ,
//    'lib/features/measurement_unit/data/repositories' ,
//   // Domain Layer
//    'lib/features/measurement_unit/domain/entities' ,
//    'lib/features/measurement_unit/domain/repositories' ,
//    'lib/features/measurement_unit/domain/usecases' ,
//   // Presentation Layer
//    'lib/features/measurement_unit/presentation/views' ,
//    'lib/features/measurement_unit/presentation/viewmodels' ,
//    'lib/features/measurement_unit/presentation/widgets' ,

//   // sub task
//   // Data Layer
//    'lib/features/sub_task/data/models' ,
//    'lib/features/sub_task/data/datasources' ,
//    'lib/features/sub_task/data/repositories' ,
//   // Domain Layer
//    'lib/features/sub_task/domain/entities' ,
//    'lib/features/sub_task/domain/repositories' ,
//    'lib/features/sub_task/domain/usecases' ,
//   // Presentation Layer
//    'lib/features/sub_task/presentation/views' ,
//    'lib/features/sub_task/presentation/viewmodels' ,
//    'lib/features/sub_task/presentation/widgets',

//   // tag
//   // Data Layer
//    'lib/features/tag/data/models' ,
//    'lib/features/tag/data/datasources' ,
//    'lib/features/tag/data/repositories' ,
//   // Domain Layer
//    'lib/features/tag/domain/entities' ,
//    'lib/features/tag/domain/repositories' ,
//    'lib/features/tag/domain/usecases' ,
//   // Presentation Layer
//    'lib/features/tag/presentation/views' ,
//    'lib/features/tag/presentation/viewmodels' ,
//    'lib/features/tag/presentation/widgets',

//   // task scheduler
//   // Data Layer
//    'lib/features/task_scheduler/data/models' ,
//    'lib/features/task_scheduler/data/datasources' ,
//    'lib/features/task_scheduler/data/repositories' ,
//   // Domain Layer
//    'lib/features/task_scheduler/domain/entities' ,
//    'lib/features/task_scheduler/domain/repositories' ,
//    'lib/features/task_scheduler/domain/usecases' ,
//   // Presentation Layer
//    'lib/features/task_scheduler/presentation/views' ,
//    'lib/features/task_scheduler/presentation/viewmodels' ,
//    'lib/features/task_scheduler/presentation/widgets',

//   // time interval
//   // Data Layer
//    'lib/features/time_interval/data/models' ,
//    'lib/features/time_interval/data/datasources' ,
//    'lib/features/time_interval/data/repositories' ,
//   // Domain Layer
//    'lib/features/time_interval/domain/entities' ,
//    'lib/features/time_interval/domain/repositories' ,
//    'lib/features/time_interval/domain/usecases' ,
//   // Presentation Layer
//    'lib/features/time_interval/presentation/views' ,
//    'lib/features/time_interval/presentation/viewmodels' ,
//    'lib/features/time_interval/presentation/widgets',
// ];

const folders = [
  '../lib/features/notification/domain/usecases',
  '../lib/features/notification/presentation/viewmodels',
  '../lib/features/notification/presentation/views',
  '../lib/features/notification/presentation/widget',
];

folders.forEach(folder => {
  fs.mkdirSync(path.join(__dirname, folder), { recursive: true });
});

console.log('Folders created successfully!');
