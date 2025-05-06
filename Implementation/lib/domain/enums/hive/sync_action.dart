// Import the extension method providing 'toSentenceCase()'
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

part 'sync_action.g.dart';

/// Represents the type of synchronization action to be performed.
/// Includes Persian translations and utility methods for lookup.
@HiveType(typeId: EnumHiveTypeIds.syncAction)
enum SyncAction {
  @HiveField(0)
  create('ایجاد'),
  @HiveField(1)
  update('به‌روزرسانی'),
  @HiveField(2)
  delete('حذف');

  /// Persian equivalent used for VM display or logging.
  const SyncAction(this._inPersian);
  final String _inPersian;

  /// Retrieves a `SyncAction` constant by its standard Dart enum name (case-insensitive).
  ///
  /// Throws a [FormatException] if the name is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(SyncAction.fromName("update")); // Output: SyncAction.update
  /// print(SyncAction.fromName("DELETE")); // Output: SyncAction.delete
  /// ```
  static SyncAction fromName(String name) {
    final lowerCaseName = name.toLowerCase();
    // Using firstWhere for robust matching against the raw enum value name
    return SyncAction.values.firstWhere(
      (e) => e.toString().split('.').last.toLowerCase() == lowerCaseName,
      // Throw an error instead of defaulting to 'create' to avoid hiding issues
      orElse: () => throw FormatException('Invalid SyncAction name: $name'),
    );
  }

  /// Retrieves either the standard English name (Sentence Case) or the Persian name using its index.
  /// Throws a [RangeError] if the index is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(SyncAction.fromIndex(1)); // Output: "Update" (assuming sentence case handles single words like this)
  /// print(SyncAction.fromIndex(0, usePersianName: true)); // Output: "ایجاد"
  /// ```
  static String fromIndex(int index, {bool usePersianName = false}) {
    if (index < 0 || index >= SyncAction.values.length) {
      // Using RangeError is conventional for invalid index access
      throw RangeError(
        'Invalid SyncAction index: $index. Must be between 0 and ${SyncAction.values.length - 1}.',
      );
    }
    final item = SyncAction.values[index];
    // Use the custom 'name' getter (which now uses sentence case) for the English version
    return usePersianName ? item._inPersian : item.name;
  }

  /// Returns the standard enum constant name, formatted using sentence case.
  /// Requires the 'toSentenceCase()' extension method to be available.
  /// Example: `SyncAction.update.name` -> "Update"
  String get name {
    // Get the raw enum name (e.g., "update") and apply sentence case
    return toString().split('.').last.toSentenceCase();
  }

  /// Returns the Persian name for VM display or logging.
  /// Example: `SyncAction.delete.nameInPersian` -> "حذف"
  String get nameInPersian => _inPersian;
}
