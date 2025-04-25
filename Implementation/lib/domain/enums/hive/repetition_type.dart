import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'repetition_type.g.dart';

/// Enum representing different types of repetition for a task.
/// This enum is used for UI purposes.
@HiveType(typeId: 106)
enum RepetitionType {
  @HiveField(0)
  weekly('هفتگی'),

  @HiveField(1)
  daily('روزانه'),

  @HiveField(2)
  weekdays('روزهای هفته'),

  @HiveField(3)
  monthly('ماهانه'),

  @HiveField(4)
  yearly('سالانه'),

  @HiveField(5)
  custom('سفارشی');

  /// Constructs a [RepetitionType] with its localized Persian string.
  const RepetitionType(this._inPersian);

  /// The Persian representation used for UI display.
  final String _inPersian;

  /// Converts a string name to a [RepetitionType] enum value.
  /// Throws an exception if the provided name is not found.
  static RepetitionType fromName(String name) => RepetitionType.values.firstWhere(
        (e) => e.name.toLowerCase() == name.toLowerCase(),
        orElse: () => throw Exception('The RepetitionType "$name" is not allowed and defined'),
      );

  /// Retrieves either the English name (formatted using [toSentenceCase])
  /// or the Persian name, based on the provided [inPersian] flag.
  static String fromIndex(int index, {bool inPersian = false}) {
    final item = RepetitionType.values.firstWhere(
      (item) => item.index == index,
      orElse: () => throw Exception('The RepetitionType index $index is not allowed and defined'),
    );
    return inPersian ? item._inPersian : item.name.toSentenceCase();
  }

  /// Returns the English name of the [RepetitionType] in sentence case.
  /// It extracts the enum string using [toString()] and then processes it.
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name of the [RepetitionType] for UI display.
  String get nameInPersian => _inPersian;
}
