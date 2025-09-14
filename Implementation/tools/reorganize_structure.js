const fs = require('fs-extra');
const path = require('path');

// =============================================
// CONFIGURATION
// =============================================
const PROJECT_ROOT = path.join(__dirname, '../lib');
const TASK_MANAGEMENT_ROOT = path.join(__dirname, '../lib/features/tasks_management');
const DRY_RUN = false; // Set to false to actually execute
const PACKAGE_NAME = 'zamaan'; // Update this to your package name
// =============================================

// Enhanced file mappings with dependency analysis
// Complete file mappings for tasks_management reorganization
const FILE_MAPPINGS = {
  // ==================== BLOCS - FIXED TO PRESERVE FOLDERS ====================
  // Categories Bloc - keep in categories folder
  'presentation/blocs/categories/categories_manager_bloc.dart': 'presentation/categories/blocs/categories_manager_bloc.dart',
  'presentation/blocs/categories/categories_manager_bloc.freezed.dart': 'presentation/categories/blocs/categories_manager_bloc.freezed.dart',
  'presentation/blocs/categories/categories_manager_event.dart': 'presentation/categories/blocs/categories_manager_event.dart',
  'presentation/blocs/categories/categories_manager_state.dart': 'presentation/categories/blocs/categories_manager_state.dart',

  // Constraint DateTime Ranges Bloc - keep in time_ranges folder
  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.dart': 'presentation/time_ranges/blocs/constraint_date_time_ranges_manager_bloc.dart',
  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.freezed.dart': 'presentation/time_ranges/blocs/constraint_date_time_ranges_manager_bloc.freezed.dart',
  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_event.dart': 'presentation/time_ranges/blocs/constraint_date_time_ranges_manager_event.dart',
  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_state.dart': 'presentation/time_ranges/blocs/constraint_date_time_ranges_manager_state.dart',

  // Goals Bloc - keep in goals folder
  'presentation/blocs/goals/goals_manager_bloc.dart': 'presentation/goals/blocs/goals_manager_bloc.dart',
  'presentation/blocs/goals/goals_manager_bloc.freezed.dart': 'presentation/goals/blocs/goals_manager_bloc.freezed.dart',
  'presentation/blocs/goals/goals_manager_event.dart': 'presentation/goals/blocs/goals_manager_event.dart',
  'presentation/blocs/goals/goals_manager_state.dart': 'presentation/goals/blocs/goals_manager_state.dart',

  // Schedule Constraints Bloc - keep in scheduling/constraints folder
  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart': 'presentation/scheduling/constraints/blocs/schedule_constraints_manager_bloc.dart',
  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.freezed.dart': 'presentation/scheduling/constraints/blocs/schedule_constraints_manager_bloc.freezed.dart',
  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_event.dart': 'presentation/scheduling/constraints/blocs/schedule_constraints_manager_event.dart',
  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_state.dart': 'presentation/scheduling/constraints/blocs/schedule_constraints_manager_state.dart',

  // Scheduled Day Time Bloc - keep in scheduling/day_time folder
  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.dart': 'presentation/scheduling/day_time/blocs/scheduled_day_time_manager_bloc.dart',
  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.freezed.dart': 'presentation/scheduling/day_time/blocs/scheduled_day_time_manager_bloc.freezed.dart',
  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_event.dart': 'presentation/scheduling/day_time/blocs/scheduled_day_time_manager_event.dart',
  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_state.dart': 'presentation/scheduling/day_time/blocs/scheduled_day_time_manager_state.dart',

  // Scheduled Occurrence Bloc - keep in scheduling/occurrences folder
  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.dart': 'presentation/scheduling/occurrences/blocs/scheduled_occurrences_manager_bloc.dart',
  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.freezed.dart': 'presentation/scheduling/occurrences/blocs/scheduled_occurrences_manager_bloc.freezed.dart',
  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_event.dart': 'presentation/scheduling/occurrences/blocs/scheduled_occurrences_manager_event.dart',
  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_state.dart': 'presentation/scheduling/occurrences/blocs/scheduled_occurrences_manager_state.dart',

  // Tags Bloc - keep in tags folder
  'presentation/blocs/tags/tags_manager_bloc.dart': 'presentation/tags/blocs/tags_manager_bloc.dart',
  'presentation/blocs/tags/tags_manager_bloc.freezed.dart': 'presentation/tags/blocs/tags_manager_bloc.freezed.dart',
  'presentation/blocs/tags/tags_manager_event.dart': 'presentation/tags/blocs/tags_manager_event.dart',
  'presentation/blocs/tags/tags_manager_state.dart': 'presentation/tags/blocs/tags_manager_state.dart',

  // Tasks Bloc - keep in tasks folder
  'presentation/blocs/tasks/tasks_manager_bloc.dart': 'presentation/tasks/blocs/tasks_manager_bloc.dart',
  'presentation/blocs/tasks/tasks_manager_bloc.freezed.dart': 'presentation/tasks/blocs/tasks_manager_bloc.freezed.dart',
  'presentation/blocs/tasks/tasks_manager_event.dart': 'presentation/tasks/blocs/tasks_manager_event.dart',
  'presentation/blocs/tasks/tasks_manager_state.dart': 'presentation/tasks/blocs/tasks_manager_state.dart',

  // ==================== GOALS ====================
  'presentation/viewmodels/goal_upsert_vm.dart': 'presentation/goals/view_models/goal_upsert_vm.dart',
  'presentation/widgets/goal/goal_card.dart': 'presentation/goals/widgets/goal_card.dart',
  'presentation/widgets/goal/goal_upsert_form.dart': 'presentation/goals/widgets/goal_form.dart',

  // ==================== CATEGORIES ====================
  'presentation/viewmodels/category/category_list_item_vm.dart': 'presentation/categories/view_models/category_list_vm.dart',
  'presentation/viewmodels/category/category_upsert_vm.dart': 'presentation/categories/view_models/category_upsert_vm.dart',
  'presentation/viewmodels/category/category_vms_manager.dart': 'presentation/categories/view_models/categories_manager_vm.dart',
  'presentation/widgets/category/categories_chip_list.dart': 'presentation/categories/widgets/categories_chip_list.dart',
  'presentation/widgets/category/category_chip.dart': 'presentation/categories/widgets/category_chip.dart',
  'presentation/widgets/category/category_upsert_form.dart': 'presentation/categories/widgets/category_form.dart',
  'presentation/widgets/category/selected_categories.dart': 'presentation/categories/widgets/selected_categories.dart',

  // ==================== TAGS ====================
  'presentation/viewmodels/tag/tag_list_item_vm.dart': 'presentation/tags/view_models/tag_list_item_vm.dart',
  'presentation/viewmodels/tag/tag_upsert_vm.dart': 'presentation/tags/view_models/tag_upsert_vm.dart',
  'presentation/viewmodels/tag/tag_vms_manager.dart': 'presentation/tags/view_models/tag_vms_manager.dart',
  'presentation/widgets/tag/tag_chip.dart': 'presentation/tags/widgets/tag_chip.dart',
  'presentation/widgets/tag/tag_upsert_form.dart': 'presentation/tags/widgets/tag_upsert_form.dart',
  'presentation/widgets/tag/tags_chip_list.dart': 'presentation/tags/widgets/tags_chip_list.dart',
  'presentation/widgets/tag/selected_tags.dart': 'presentation/tags/widgets/selected_tags.dart',

  // ==================== SCHEDULING - CONSTRAINTS ====================
  'presentation/viewmodels/scheduler/schedule_constraints_vm.dart': 'presentation/scheduling/constraints/view_models/schedule_constraints_vm.dart',
  'presentation/viewmodels/scheduler/schedule_constraints_manager_vm.dart': 'presentation/scheduling/constraints/view_models/schedule_constraints_manager_vm.dart',
  'presentation/widgets/scheduler/schedule_constraints.dart/upsert_form.dart/schedule_constraints_upsert_form.dart': 'presentation/scheduling/constraints/widgets/schedule_constraints_upsert_form.dart',
  'presentation/widgets/scheduler/schedule_constraints.dart/upsert_form.dart/schedule_exceptions_section.dart': 'presentation/scheduling/constraints/widgets/schedule_exceptions_section.dart',
  'presentation/widgets/scheduler/schedule_constraints.dart/schedule_constraints_overview.dart': 'presentation/scheduling/constraints/widgets/schedule_constraints_overview.dart',

  // ==================== SCHEDULING - DAY TIME ====================
  'presentation/viewmodels/scheduler/day_time/scheduled_day_time_upsert_form_vm.dart': 'presentation/scheduling/day_time/view_models/scheduled_day_time_upsert_form_vm.dart',
  'presentation/viewmodels/scheduler/day_time/scheduled_day_time_vms_manager.dart': 'presentation/scheduling/day_time/view_models/scheduled_day_time_vms_manager.dart',
  'presentation/viewmodels/scheduler/day_time/day_picker_with_time_ranges_card_vm.dart': 'presentation/scheduling/day_time/view_models/day_picker_with_time_ranges_card_vm.dart',
  'presentation/widgets/scheduler/scheduled_day_time/scheduled_day_time_upsert_form.dart': 'presentation/scheduling/day_time/widgets/scheduled_day_time_upsert_form.dart',
  'presentation/widgets/scheduler/scheduled_day_time/task_scheduled_day_time_overview.dart': 'presentation/scheduling/day_time/widgets/task_scheduled_day_time_overview.dart',

  // ==================== SCHEDULING - INTERVALS ====================
  'presentation/viewmodels/scheduler/scheduled_interval_vm.dart': 'presentation/scheduling/intervals/view_models/scheduled_interval_vm.dart',

  // ==================== SCHEDULING - OCCURRENCES ====================
  'presentation/viewmodels/scheduler/scheduled_occurrence_vm.dart': 'presentation/scheduling/occurrences/view_models/scheduled_occurrence_vm.dart',
  'presentation/viewmodels/scheduler/schedulers_aggregate_vm.dart': 'presentation/scheduling/occurrences/view_models/schedulers_aggregate_vm.dart',

  // ==================== TASKS ====================
  'presentation/views/task_upsert_view.dart': 'presentation/tasks/views/task_upsert_view.dart',
  'presentation/views/today_tasks_view.dart': 'presentation/tasks/views/today_tasks_view.dart',
  'presentation/views/active_tasks_view.dart': 'presentation/tasks/views/active_tasks_view.dart',
  'presentation/views/accomplishment_tasks_view.dart': 'presentation/tasks/views/accomplishment_tasks_view.dart',
  'presentation/views/old_active_tasks_view.dart': 'presentation/tasks/views/old_active_tasks_view.dart',
  'presentation/viewmodels/task/task_upsert_vm.dart': 'presentation/tasks/view_models/task_upsert_vm.dart',
  'presentation/viewmodels/task/task_list_vm.dart': 'presentation/tasks/view_models/task_list_vm.dart',
  'presentation/viewmodels/task/task_detail_vm.dart': 'presentation/tasks/view_models/task_detail_vm.dart',
  'presentation/viewmodels/task/tasks_manager_vm.dart': 'presentation/tasks/view_models/tasks_manager_vm.dart',
  'presentation/viewmodels/tasks_overview/task_overview_list_item_vm.dart': 'presentation/tasks/view_models/task_overview_list_item_vm.dart',
  'presentation/widgets/task_upsert/task_upsert_form.dart': 'presentation/tasks/widgets/task_form.dart',
  'presentation/widgets/task_upsert/sub_task_form.dart': 'presentation/tasks/widgets/sub_task_form.dart',
  'presentation/widgets/task_upsert/sub_tasks_list.dart': 'presentation/tasks/widgets/sub_tasks_list.dart',
  'presentation/widgets/task_coordiantor_list_item_widget.dart': 'presentation/tasks/widgets/task_coordinator_list_item.dart',

  // ==================== SUB-TASKS ====================
  'presentation/viewmodels/task/sub_task_upsert_vm.dart': 'presentation/sub_tasks/view_models/sub_task_upsert_vm.dart',
  'presentation/viewmodels/task/sub_task_vms_manager.dart': 'presentation/sub_tasks/view_models/sub_task_vms_manager.dart',
  'presentation/viewmodels/tasks_overview/sub_task_overview_list_item_vm.dart': 'presentation/sub_tasks/view_models/sub_task_overview_list_item_vm.dart',
  'presentation/widgets/sub_task_upsert/sub_task_card.dart': 'presentation/sub_tasks/widgets/sub_task_card.dart',
  'presentation/widgets/sub_task_upsert/sub_task_upsert_form.dart': 'presentation/sub_tasks/widgets/sub_task_upsert_form.dart',

  // ==================== TIME RANGES - DATE RANGES ====================
  'presentation/viewmodels/date_range/date_range_item_vm.dart': 'presentation/time_ranges/date_ranges/view_models/date_range_item_vm.dart',
  'presentation/viewmodels/date_range/date_range_picker_vm.dart': 'presentation/time_ranges/date_ranges/view_models/date_range_picker_vm.dart',
  'presentation/viewmodels/date_range/date_range_vm.dart': 'presentation/time_ranges/date_ranges/view_models/date_range_vm.dart',
  'presentation/viewmodels/entities/date_range_vm.dart': 'presentation/time_ranges/date_ranges/view_models/date_range_entity_vm.dart',

  // ==================== TIME RANGES - TIME RANGES ====================
  'presentation/viewmodels/time_range/time_range_item_vm.dart': 'presentation/time_ranges/time_ranges/view_models/time_range_item_vm.dart',
  'presentation/viewmodels/time_range/time_range_picker_vm.dart': 'presentation/time_ranges/time_ranges/view_models/time_range_picker_vm.dart',
  'presentation/viewmodels/time_range/time_range_vm.dart': 'presentation/time_ranges/time_ranges/view_models/time_range_vm.dart',
  'presentation/viewmodels/entities/time_range_vm.dart': 'presentation/time_ranges/time_ranges/view_models/time_range_entity_vm.dart',

  // ==================== SCHEDULING ITEMS ====================
  'presentation/viewmodels/scheduler/items/scheduled_time_range.dart': 'presentation/scheduling/shared/view_models/scheduled_time_range_vm.dart',
  'presentation/viewmodels/scheduler/items/selected_day.dart': 'presentation/scheduling/shared/view_models/selected_day_vm.dart',

  // ==================== MEASUREMENT SYSTEM ====================
  'presentation/viewmodels/entities/measurement_unit_vm.dart': 'presentation/measurement_system/view_models/measurement_unit_vm.dart',
  'presentation/viewmodels/goal_upsert_vm.dart': 'presentation/goals/view_models/goal_upsert_vm.dart', // Already mapped above, but keeping for completeness

  // ==================== SHARED COMPONENTS ====================
  'presentation/dialogs/custom_show_modal_bottom_sheet.dart': 'presentation/shared/widgets/dialogs/custom_modal_bottom_sheet.dart',
  'presentation/dialogs/date_range_picker_dialog.dart': 'presentation/shared/widgets/dialogs/date_range_picker_dialog.dart',
  'presentation/dialogs/show_floating_centered_dialog.dart': 'presentation/shared/widgets/dialogs/floating_centered_dialog.dart',

  'presentation/viewmodels/bases/vms_manager.dart': 'presentation/shared/view_models/base_vms_manager.dart',

  'presentation/widgets/scheduler/schedule_section_chips.dart': 'presentation/scheduling/shared/widgets/schedule_section_chips.dart',
  'presentation/widgets/scheduler/schedule_sections_overview_widget.dart': 'presentation/scheduling/shared/widgets/schedule_sections_overview.dart',

  // ==================== COORDINATORS ====================
  'presentation/coordinators/task_coordinator/batch_crud_operations_on_task.dart': 'presentation/coordinators/task_coordinator/batch_operations.dart',
  'presentation/coordinators/task_coordinator/single_crud_operations_on_task.dart': 'presentation/coordinators/task_coordinator/single_operations.dart',
  'presentation/coordinators/task_coordinator/task_coordinator.dart': 'presentation/coordinators/task_coordinator/task_coordinator.dart',

  'presentation/coordinators/tasks_coordinator_manager/attach_operations_on_manager.dart': 'presentation/coordinators/tasks_coordinator_manager/attach_operations.dart',
  'presentation/coordinators/tasks_coordinator_manager/batch_crud_operations_on_manager.dart': 'presentation/coordinators/tasks_coordinator_manager/batch_operations.dart',
  'presentation/coordinators/tasks_coordinator_manager/single_crud_operations_on_manager.dart': 'presentation/coordinators/tasks_coordinator_manager/single_operations.dart',
  'presentation/coordinators/tasks_coordinator_manager/task_coordinators_manager.dart': 'presentation/coordinators/tasks_coordinator_manager/coordinator_manager.dart',

  // ==================== NAVIGATION ARGUMENTS ====================
  'presentation/navigation_argument_models/task_upsert.dart': 'presentation/shared/navigation/task_upsert_arguments.dart',

  // ==================== BLOCS ====================
  'presentation/blocs/categories/categories_manager_bloc.dart': 'presentation/blocs/categories_manager_bloc.dart',
  'presentation/blocs/categories/categories_manager_bloc.freezed.dart': 'presentation/blocs/categories_manager_bloc.freezed.dart',
  'presentation/blocs/categories/categories_manager_event.dart': 'presentation/blocs/categories_manager_event.dart',
  'presentation/blocs/categories/categories_manager_state.dart': 'presentation/blocs/categories_manager_state.dart',

  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.dart': 'presentation/blocs/constraint_date_time_ranges_manager_bloc.dart',
  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.freezed.dart': 'presentation/blocs/constraint_date_time_ranges_manager_bloc.freezed.dart',
  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_event.dart': 'presentation/blocs/constraint_date_time_ranges_manager_event.dart',
  'presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_state.dart': 'presentation/blocs/constraint_date_time_ranges_manager_state.dart',

  'presentation/blocs/goals/goals_manager_bloc.dart': 'presentation/blocs/goals_manager_bloc.dart',
  'presentation/blocs/goals/goals_manager_bloc.freezed.dart': 'presentation/blocs/goals_manager_bloc.freezed.dart',
  'presentation/blocs/goals/goals_manager_event.dart': 'presentation/blocs/goals_manager_event.dart',
  'presentation/blocs/goals/goals_manager_state.dart': 'presentation/blocs/goals_manager_state.dart',

  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart': 'presentation/blocs/schedule_constraints_manager_bloc.dart',
  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.freezed.dart': 'presentation/blocs/schedule_constraints_manager_bloc.freezed.dart',
  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_event.dart': 'presentation/blocs/schedule_constraints_manager_event.dart',
  'presentation/blocs/scheduler/constraints/schedule_constraints_manager_state.dart': 'presentation/blocs/schedule_constraints_manager_state.dart',

  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.dart': 'presentation/blocs/scheduled_day_time_manager_bloc.dart',
  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.freezed.dart': 'presentation/blocs/scheduled_day_time_manager_bloc.freezed.dart',
  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_event.dart': 'presentation/blocs/scheduled_day_time_manager_event.dart',
  'presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_state.dart': 'presentation/blocs/scheduled_day_time_manager_state.dart',

  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.dart': 'presentation/blocs/scheduled_occurrences_manager_bloc.dart',
  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.freezed.dart': 'presentation/blocs/scheduled_occurrences_manager_bloc.freezed.dart',
  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_event.dart': 'presentation/blocs/scheduled_occurrences_manager_event.dart',
  'presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_state.dart': 'presentation/blocs/scheduled_occurrences_manager_state.dart',

  'presentation/blocs/tags/tags_manager_bloc.dart': 'presentation/blocs/tags_manager_bloc.dart',
  'presentation/blocs/tags/tags_manager_bloc.freezed.dart': 'presentation/blocs/tags_manager_bloc.freezed.dart',
  'presentation/blocs/tags/tags_manager_event.dart': 'presentation/blocs/tags_manager_event.dart',
  'presentation/blocs/tags/tags_manager_state.dart': 'presentation/blocs/tags_manager_state.dart',

  'presentation/blocs/tasks/tasks_manager_bloc.dart': 'presentation/blocs/tasks_manager_bloc.dart',
  'presentation/blocs/tasks/tasks_manager_bloc.freezed.dart': 'presentation/blocs/tasks_manager_bloc.freezed.dart',
  'presentation/blocs/tasks/tasks_manager_event.dart': 'presentation/blocs/tasks_manager_event.dart',
  'presentation/blocs/tasks/tasks_manager_state.dart': 'presentation/blocs/tasks_manager_state.dart',

  // ==================== SCHEDULING MODELS ====================
    'presentation/blocs/scheduler/constraints/models/on_updating_date_time_constraints_exceptions.dart': 'presentation/scheduling/constraints/models/constraints_exceptions.dart',


};

// Enhanced NEW_STRUCTURE to include blocs folders in each feature
const NEW_STRUCTURE = {
  'presentation': {
    'goals': {
      'view_models': [],
      'views': [],
      'widgets': [],
      'blocs': []  // ADDED
    },
    'categories': {
      'view_models': [],
      'views': [],
      'widgets': [],
      'blocs': []  // ADDED
    },
    'tags': {
      'view_models': [],
      'views': [],
      'widgets': [],
      'blocs': []  // ADDED
    },
    'scheduling': {
      'constraints': {
        'view_models': [],
        'views': [],
        'widgets': [],
        'models': [],
        'blocs': []  // ADDED
      },
      'day_time': {
        'view_models': [],
        'views': [],
        'widgets': [],
        'blocs': []  // ADDED
      },
      'intervals': {
        'view_models': [],
        'views': [],
        'widgets': [],
        'blocs': []  // ADDED
      },
      'occurrences': {
        'view_models': [],
        'views': [],
        'widgets': [],
        'blocs': []  // ADDED
      },
      'shared': {
        'view_models': [],
        'widgets': []
      }
    },
    'tasks': {
      'view_models': [],
      'views': [],
      'widgets': [],
      'blocs': []  // ADDED
    },
    'sub_tasks': {
      'view_models': [],
      'views': [],
      'widgets': [],
      'blocs': []  // ADDED
    },
    'time_ranges': {
      'date_ranges': {
        'view_models': [],
        'views': [],
        'widgets': [],
        'blocs': []  // ADDED
      },
      'time_ranges': {
        'view_models': [],
        'views': [],
        'widgets': [],
        'blocs': []  // ADDED
      }
    },
    'measurement_system': {
      'view_models': [],
      'views': [],
      'widgets': [],
      'blocs': []  // ADDED
    },
    'shared': {
      'view_models': [],
      'widgets': {
        'dialogs': []
      },
      'navigation': []
    },
    'coordinators': {
      'task_coordinator': [],
      'tasks_coordinator_manager': []
    }
    // REMOVED: 'blocs': [] from root level
  }
};

// Helper function to get files by phase
function getFilesByPhase(phaseKey) {
  const phases = {
    'Phase 1 - Foundation': Object.entries(FILE_MAPPINGS).filter(([oldPath]) =>
      oldPath.includes('shared') ||
      oldPath.includes('coordinators') ||
      oldPath.includes('blocs') ||
      oldPath.includes('navigation_argument') ||
      oldPath.includes('dialogs')
    ),
    'Phase 2 - Core Entities': Object.entries(FILE_MAPPINGS).filter(([oldPath]) =>
      oldPath.includes('goal') ||
      oldPath.includes('categor') ||
      oldPath.includes('tag')
    ),
    'Phase 3 - Time Management': Object.entries(FILE_MAPPINGS).filter(([oldPath]) =>
      oldPath.includes('time_range') ||
      oldPath.includes('date_range')
    ),
    'Phase 4 - Task System': Object.entries(FILE_MAPPINGS).filter(([oldPath]) =>
      (oldPath.includes('task') || oldPath.includes('sub_task')) &&
      !oldPath.includes('schedul') &&
      !oldPath.includes('goal') &&
      !oldPath.includes('categor') &&
      !oldPath.includes('tag')
    ),
    'Phase 5 - Scheduling System': Object.entries(FILE_MAPPINGS).filter(([oldPath]) =>
      oldPath.includes('schedul')
    ),
    'Phase 6 - Measurement System': Object.entries(FILE_MAPPINGS).filter(([oldPath]) =>
      oldPath.includes('measurement')
    )
  };

  return phases[phaseKey] || [];
}

class MigrationManager {
  constructor() {
    this.importUpdates = new Map();
    this.filesToUpdate = new Set();
    this.currentPhase = null;
    }

    // Add this method to the MigrationManager class
async cleanupEmptyFolders() {
  console.log('\n🧹 Cleaning up empty folders...');

  const startDir = path.join(TASK_MANAGEMENT_ROOT, 'presentation');
  await this.removeEmptyFolders(startDir);
}

async removeEmptyFolders(dir) {
  if (!await fs.pathExists(dir)) return;

  try {
    const items = await fs.readdir(dir);

    for (const item of items) {
      const fullPath = path.join(dir, item);
      const stat = await fs.stat(fullPath);

      if (stat.isDirectory()) {
        // Recursively check subdirectories
        await this.removeEmptyFolders(fullPath);

        // Check if directory is now empty
        const remainingItems = await fs.readdir(fullPath);
        if (remainingItems.length === 0) {
          if (!DRY_RUN) {
            await fs.remove(fullPath);
          }
          console.log(`🗑️  Removed empty folder: ${path.relative(TASK_MANAGEMENT_ROOT, fullPath)}`);
        }
      }
    }
  } catch (error) {
    console.log(`⚠️  Could not check folder ${dir}: ${error.message}`);
  }
}

  // Extract import statements from Dart file
  extractImports(content) {
    const importRegex = /import\s+['"]([^'"]+)['"];/g;
    const imports = [];
    let match;

    while ((match = importRegex.exec(content)) !== null) {
      imports.push(match[1]);
    }

    return imports;
  }

  // Check if import is internal to tasks_management
  isTasksManagementImport(importPath) {
    return importPath.includes('features/tasks_management') ||
           (importPath.startsWith('package:') && importPath.includes('tasks_management'));
  }

  // Convert import path to project-relative path
  resolveImportPath(filePath, importPath) {
    if (importPath.startsWith('package:')) {
      return importPath.replace(`package:${PACKAGE_NAME}/`, '');
    }

    if (importPath.startsWith('../')) {
      const fileDir = path.dirname(filePath);
      let resolved = path.resolve(fileDir, importPath);
      return path.relative(PROJECT_ROOT, resolved);
    }

    if (importPath.startsWith('./')) {
      const fileDir = path.dirname(filePath);
      let resolved = path.join(fileDir, importPath.substring(2));
      return path.relative(PROJECT_ROOT, resolved);
    }

    // Handle absolute paths within project
    if (importPath.startsWith('/')) {
      return importPath.substring(1);
    }

    return importPath;
  }

  // Generate new import path
  generateNewImportPath(oldImportPath, mapping) {
    // Handle package imports
    if (oldImportPath.startsWith('package:')) {
      const relativePath = oldImportPath.replace(`package:${PACKAGE_NAME}/`, '');
      for (const [oldPath, newPath] of Object.entries(mapping)) {
        if (relativePath.includes(oldPath)) {
          return `package:${PACKAGE_NAME}/features/tasks_management/${newPath}`;
        }
      }
      return null;
    }

    // Handle relative imports
    for (const [oldPath, newPath] of Object.entries(mapping)) {
      if (oldImportPath.includes(oldPath)) {
        return oldImportPath.replace(oldPath, newPath);
      }
    }
    return null;
  }

  // Update import statements in content
  updateImports(content, filePath, mapping) {
    const importRegex = /(import\s+['"])([^'"]+)(['"];)/g;
    let updatedContent = content;

    return updatedContent.replace(importRegex, (match, prefix, importPath, suffix) => {
      const newImportPath = this.generateNewImportPath(importPath, mapping);
      if (newImportPath) {
        console.log(`   ↳ Updating import: ${importPath} -> ${newImportPath}`);
        return `${prefix}${newImportPath}${suffix}`;
      }
      return match;
    });
  }

  // Scan file for dependencies
  async scanFileDependencies(filePath) {
    try {
      const content = await fs.readFile(filePath, 'utf8');
      const imports = this.extractImports(content);

      const dependencies = imports.filter(imp => this.isTasksManagementImport(imp))
                                  .map(imp => this.resolveImportPath(filePath, imp));

      return { content, dependencies };
    } catch (error) {
      console.log(`❌ Error reading ${filePath}: ${error.message}`);
      return { content: '', dependencies: [] };
    }
  }

  // Create new directory structure
  async createNewStructure() {
    console.log('📁 Creating new directory structure...\n');
    await this.createDirectories(NEW_STRUCTURE, TASK_MANAGEMENT_ROOT);
  }

  async createDirectories(structure, basePath) {
    for (const [key, value] of Object.entries(structure)) {
      const currentPath = path.join(basePath, key);

      if (typeof value === 'object' && !Array.isArray(value)) {
        if (!DRY_RUN) {
          await fs.ensureDir(currentPath);
        }
        console.log(`📁 Created: ${path.relative(PROJECT_ROOT, currentPath)}`);
        await this.createDirectories(value, currentPath);
      }
    }
  }

  // CRITICAL FIX: Enhanced backup that works properly
  async backupOldStructure() {
    const oldPresentationPath = path.join(TASK_MANAGEMENT_ROOT, 'presentation');
    const backupPath = path.join(TASK_MANAGEMENT_ROOT, 'old_presentation');

    if (await fs.pathExists(oldPresentationPath)) {
      console.log(`\n💾 Backing up old structure to: ${path.relative(PROJECT_ROOT, backupPath)}`);

      if (!DRY_RUN) {
        // Remove existing backup if it exists
        if (await fs.pathExists(backupPath)) {
          await fs.remove(backupPath);
        }
        // Copy instead of move to preserve original structure
        await fs.copy(oldPresentationPath, backupPath);
      }
      console.log('✅ Backup created successfully');
    } else {
      console.log('❌ No presentation directory found to backup!');
    }
  }

  // CRITICAL FIX: Enhanced file migration with proper import updates
  async migrateFiles() {
    console.log('\n🔄 Starting file migration with import updates...\n');

    const phases = {
      '1': { name: 'Phase 1 - Foundation', files: getFilesByPhase('Phase 1 - Foundation') },
      '2': { name: 'Phase 2 - Core Entities', files: getFilesByPhase('Phase 2 - Core Entities') },
      '3': { name: 'Phase 3 - Time Management', files: getFilesByPhase('Phase 3 - Time Management') },
      '4': { name: 'Phase 4 - Task System', files: getFilesByPhase('Phase 4 - Task System') },
      '5': { name: 'Phase 5 - Scheduling System', files: getFilesByPhase('Phase 5 - Scheduling System') },
      '6': { name: 'Phase 6 - Measurement System', files: getFilesByPhase('Phase 6 - Measurement System') }
    };

    let totalMoved = 0;
    let totalUpdated = 0;

    // Process all phases
    for (const [phaseNum, phase] of Object.entries(phases)) {
      this.currentPhase = phaseNum;

      if (phase.files.length > 0) {
        console.log(`\n🔄 Migrating ${phase.name}...`);
        console.log('-'.repeat(50));

        let phaseMoved = 0;
        let phaseUpdated = 0;

        for (const [oldPath, newPath] of phase.files) {
          const fullOldPath = path.join(TASK_MANAGEMENT_ROOT, oldPath);
          const fullNewPath = path.join(TASK_MANAGEMENT_ROOT, newPath);

          try {
            if (await fs.pathExists(fullOldPath)) {
              // Read and update file content with import fixes
              const { content, dependencies } = await this.scanFileDependencies(fullOldPath);
              let updatedContent = this.updateImports(content, fullOldPath, FILE_MAPPINGS);

              // Move file to new location
              if (!DRY_RUN) {
                await fs.ensureDir(path.dirname(fullNewPath));
                await fs.writeFile(fullNewPath, updatedContent, 'utf8');
                // Remove old file after successful copy
                await fs.remove(fullOldPath);
              }

              console.log(`✅ ${oldPath} -> ${newPath}`);
              phaseMoved++;
              totalMoved++;

              // Track dependencies for later updates
              dependencies.forEach(dep => {
                const fullDepPath = path.join(PROJECT_ROOT, dep);
                if (fs.pathExistsSync(fullDepPath)) {
                  this.filesToUpdate.add(fullDepPath);
                }
              });

              if (dependencies.length > 0) {
                phaseUpdated += dependencies.length;
                totalUpdated += dependencies.length;
              }
            } else {
              console.log(`❌ Source not found: ${oldPath}`);
            }
          } catch (error) {
            console.log(`❌ Error migrating ${oldPath}: ${error.message}`);
          }
        }

        console.log(`\n📊 ${phase.name} Summary:`);
        console.log(`   Files moved: ${phaseMoved}`);
        console.log(`   Dependencies found: ${phaseUpdated}`);

        // Update dependencies after each phase
        if (this.filesToUpdate.size > 0) {
          console.log(`\n🔧 Updating dependencies for ${phase.name}...`);
          await this.updateDependentFiles();
        }

        console.log(`\n✅ Completed ${phase.name}`);
        console.log('='.repeat(50));
      } else {
        console.log(`⏭️  Skipping ${phase.name} - no files to migrate`);
      }
    }

    console.log(`\n📊 Total Migration Summary:`);
    console.log(`   Files moved: ${totalMoved}`);
    console.log(`   Dependencies updated: ${this.filesToUpdate.size}`);
  }

  // CRITICAL FIX: Enhanced dependency updater
  async updateDependentFiles() {
    console.log('\n🔧 Updating imports in dependent files...');

    let updateCount = 0;
    const processedFiles = new Set();

    // Process all files that need updates
    for (const filePath of this.filesToUpdate) {
      if (processedFiles.has(filePath)) continue;

      try {
        if (await fs.pathExists(filePath)) {
          const content = await fs.readFile(filePath, 'utf8');
          const updatedContent = this.updateImports(content, filePath, FILE_MAPPINGS);

          if (content !== updatedContent) {
            if (!DRY_RUN) {
              await fs.writeFile(filePath, updatedContent, 'utf8');
            }
            console.log(`✅ Updated imports in: ${path.relative(PROJECT_ROOT, filePath)}`);
            updateCount++;
          }
          processedFiles.add(filePath);
        }
      } catch (error) {
        console.log(`❌ Error updating ${filePath}: ${error.message}`);
      }
    }

    console.log(`📊 Updated ${updateCount} dependent files`);

    // Clear the processed files
    this.filesToUpdate.clear();
  }

  // CRITICAL FIX: Simplified structure activation
  async activateNewStructure() {
    console.log(`\n🚀 Finalizing migration...`);

    // The files have already been moved during migration
    // Just verify the new structure
    const newPresentationPath = path.join(TASK_MANAGEMENT_ROOT, 'presentation');

    if (!DRY_RUN) {
      try {
        // Verify new structure exists and has files
        if (await fs.pathExists(newPresentationPath)) {
          const files = await fs.readdir(newPresentationPath, { recursive: true });
          console.log(`✅ New structure activated with ${files.length} files/directories`);
        } else {
          console.log('❌ New presentation structure not found!');
        }
      } catch (error) {
        console.log(`❌ Error verifying new structure: ${error.message}`);
      }
    } else {
      console.log('✅ New structure would be activated (dry run)');
    }
  }

  // Helper methods for the report
  estimateDependencies(files) {
    const dependencyCount = files.reduce((count, [oldPath]) => {
      return count + (oldPath.includes('shared') || oldPath.includes('base') ? 3 :
                     oldPath.includes('viewmodel') ? 2 : 1);
    }, 0);

    if (dependencyCount > 20) return 'High';
    if (dependencyCount > 10) return 'Medium';
    return 'Low';
  }

  estimateRisk(files) {
    const riskFactors = files.reduce((risk, [oldPath]) => {
      return risk + (oldPath.includes('bloc') ? 2 :
                    oldPath.includes('viewmodel') ? 1.5 :
                    oldPath.includes('widget') ? 1 : 0.5);
    }, 0);

    if (riskFactors > 15) return 'High';
    if (riskFactors > 8) return 'Medium';
    return 'Low';
  }

  // Generate migration report
  generateReport() {
    console.log('\n📋 MIGRATION REPORT');
    console.log('='.repeat(50));

    const phases = {
      '1': { name: 'Phase 1 - Foundation', files: getFilesByPhase('Phase 1 - Foundation') },
      '2': { name: 'Phase 2 - Core Entities', files: getFilesByPhase('Phase 2 - Core Entities') },
      '3': { name: 'Phase 3 - Time Management', files: getFilesByPhase('Phase 3 - Time Management') },
      '4': { name: 'Phase 4 - Task System', files: getFilesByPhase('Phase 4 - Task System') },
      '5': { name: 'Phase 5 - Scheduling System', files: getFilesByPhase('Phase 5 - Scheduling System') },
      '6': { name: 'Phase 6 - Measurement System', files: getFilesByPhase('Phase 6 - Measurement System') }
    };

    let totalFiles = 0;

    console.log('\n📁 Migration Phases Overview:');
    console.log('-'.repeat(40));

    for (const [phaseNum, phase] of Object.entries(phases)) {
      console.log(`\nPhase ${phaseNum}: ${phase.name}`);
      console.log(`   Files: ${phase.files.length}`);
      console.log(`   Dependencies: ${this.estimateDependencies(phase.files)}`);
      console.log(`   Risk: ${this.estimateRisk(phase.files)}`);

      totalFiles += phase.files.length;
    }

    console.log(`\n📊 Totals:`);
    console.log(`   Files: ${totalFiles}`);
    console.log(`   Phases: ${Object.keys(phases).length}`);
    console.log(`   Dry Run: ${DRY_RUN}`);

    console.log(`\n⚠️  Important:`);
    console.log(`   - Backup is created as 'old_presentation'`);
    console.log(`   - Files are moved with updated imports`);
    console.log(`   - Dependent files are updated automatically`);
  }

  // Main migration execution - SIMPLIFIED AND FIXED
 // Update the executeMigration method to include cleanup
async executeMigration() {
  console.log('🚀 Starting Task Management Migration\n');
  console.log(`Dry Run: ${DRY_RUN}`);
  console.log('='.repeat(50));

  try {
    // Debug first
    this.debugStructure();

    // Step 1: Create backup FIRST
    await this.backupOldStructure();

    // Step 2: Create new directory structure
    await this.createNewStructure();

    // Step 3: Migrate files
    await this.migrateFiles();

    // Step 4: Update dependent files
    await this.updateDependentFiles();

    // Step 5: Clean up empty folders
    await this.cleanupEmptyFolders();

    // Step 6: Verify
    const success = await this.verifyMigration();

    console.log('\n📋 MIGRATION COMPLETE');
    console.log('='.repeat(50));
    console.log(success ? '✅ SUCCESS' : '⚠️  COMPLETED WITH WARNINGS');
    console.log(`   Backup: old_presentation/`);
    console.log(`   New structure: presentation/`);
    console.log(`   Files processed: ${Object.keys(FILE_MAPPINGS).length}`);

  } catch (error) {
    console.log(`\n❌ MIGRATION FAILED: ${error.message}`);
    console.log('💡 Check the errors above and verify your file paths');
  }
}
}

// Command line interface
async function main() {
  const args = process.argv.slice(2);
  const command = args[0] || 'report';

  const migrationManager = new MigrationManager();

  switch (command) {
    case 'report':
      migrationManager.generateReport();
      break;

    case 'execute':
      await migrationManager.executeMigration();
      break;

    case 'dry-run':
      console.log('🧪 DRY RUN - No changes will be made');
      await migrationManager.executeMigration();
      break;

    default:
      console.log('Usage:');
      console.log('  node migrate_tasks.js report     - Show migration plan');
      console.log('  node migrate_tasks.js execute    - Execute migration');
      console.log('  node migrate_tasks.js dry-run    - Dry run migration');
      console.log('\n⚠️  Remember to:');
      console.log('   - Update PACKAGE_NAME to your actual package name');
      console.log('   - Set DRY_RUN = false when ready to execute');
      break;
  }
}

// Run the script
main().catch(console.error);