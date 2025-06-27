import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

part 'repetition_type.g.dart';

/// Enum representing different types of repetition for a task.
/// This enum is used for VM purposes.
@HiveType(typeId: EnumHiveTypeIds.repetitionType)
enum RepetitionType {
  @HiveField(0)
  minutely('دقیقه ای'),

  @HiveField(1)
  hourly('ساعتی'),

  @HiveField(2)
  daily('روزانه'),

  @HiveField(3)
  weekdays('روزهای هفته'),

  @HiveField(4)
  weekly('هفتگی'),

  @HiveField(5)
  monthly('ماهانه'),

  @HiveField(6)
  yearly('سالانه'),

  @HiveField(7)
  custom('سفارشی');

  /// Constructs a [RepetitionType] with its localized Persian string.
  const RepetitionType(this._inPersian);

  /// The Persian representation used for VM display.
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

  /// Returns the Persian name of the [RepetitionType] for VM display.
  String get nameInPersian => _inPersian;
}
