import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/enums/hive/measurement_category.dart';

part 'measurement_unit.g.dart';

/// Represents various measurement units with Persian translations.
/// Sorted from **largest to smallest** within each category.
/// Each unit is linked to its category and optional "above" / "below" units.
///
/// Example Usage:
/// ```dart
/// var unit = MeasurementUnit.page;
/// print(unit.name);         // Output: "Page"
/// print(unit.nameInPersian);  // Output: "صفحه"
/// print(unit.nextSmaller?.name); // Output: "Item"
/// ```
@HiveType(typeId: EnumHiveTypeIds.measurementUnit)
enum MeasurementUnit {
  // -------------------
  // Mass Category (Largest to Smallest)
  // -------------------
  @HiveField(0)
  ton('تن', MeasurementCategory.mass),

  @HiveField(1)
  kilogram('کیلوگرم', MeasurementCategory.mass),

  @HiveField(2)
  gram('گرم', MeasurementCategory.mass),

  @HiveField(3)
  milligram('میلی‌گرم', MeasurementCategory.mass),

  @HiveField(4)
  microgram('میکروگرم', MeasurementCategory.mass),

  @HiveField(5)
  ounce('اونس', MeasurementCategory.mass), // Common imperial weight unit.

  // -------------------
  // Length Category (Largest to Smallest)
  // -------------------
  @HiveField(6)
  kilometer('کیلومتر', MeasurementCategory.length),

  @HiveField(7)
  mile('مایل', MeasurementCategory.length),

  @HiveField(8)
  meter('متر', MeasurementCategory.length),

  @HiveField(9)
  centimeter('سانتی‌متر', MeasurementCategory.length),

  @HiveField(10)
  millimeter('میلی‌متر', MeasurementCategory.length),

  @HiveField(11)
  yard('یارد', MeasurementCategory.length),

  @HiveField(12)
  foot('فوت', MeasurementCategory.length),

  @HiveField(13)
  inch('اینچ', MeasurementCategory.length),

  // -------------------
  // Area Category (Largest to Smallest)
  // -------------------
  @HiveField(14)
  hectare('هکتار', MeasurementCategory.area),

  @HiveField(15)
  squareMeter('متر مربع', MeasurementCategory.area),

  @HiveField(16)
  squareCentimeter('سانتی‌متر مربع', MeasurementCategory.area),

  // -------------------
  // Volume Category (Largest to Smallest)
  // -------------------
  @HiveField(17)
  cubicMeter('متر مکعب', MeasurementCategory.volume), // Newly added for volume measurement.

  @HiveField(18)
  kiloliter('کیلو لیتر', MeasurementCategory.volume),

  @HiveField(19)
  liter('لیتر', MeasurementCategory.volume),

  @HiveField(20)
  milliliter('میلی‌لیتر', MeasurementCategory.volume),

  // -------------------
  // Time Category (Largest to Smallest)
  // -------------------
  @HiveField(21)
  hour('ساعت', MeasurementCategory.time),

  @HiveField(22)
  minute('دقیقه', MeasurementCategory.time),

  @HiveField(23)
  second('ثانیه', MeasurementCategory.time),

  @HiveField(24)
  millisecond('میلی‌ثانیه', MeasurementCategory.time),

  // -------------------
  // Currency Category (Largest to Smallest)
  // -------------------
  @HiveField(25)
  toman('تومان', MeasurementCategory.currency), // Added Persian currency.

  @HiveField(26)
  rial('ریال', MeasurementCategory.currency), // Added Persian currency.

  @HiveField(27)
  dollar('دلار', MeasurementCategory.currency),

  @HiveField(28)
  euro('یورو', MeasurementCategory.currency),

  // -------------------
  // Count Category (Largest to Smallest)
  // -------------------
  @HiveField(29)
  book('کتاب', MeasurementCategory.count),

  @HiveField(30)
  collection('مجموعه', MeasurementCategory.count),

  @HiveField(31)
  page('صفحه', MeasurementCategory.count),

  @HiveField(32)
  item('مورد', MeasurementCategory.count),

  @HiveField(33)
  number('عدد', MeasurementCategory.count),

  // -------------------
  // Custom Category
  // -------------------
  @HiveField(34)
  custom('اختیاری', MeasurementCategory.custom);

  /// Persian equivalent used for VM display.
  const MeasurementUnit(this._inPersian, this.category);
  final String _inPersian;
  final MeasurementCategory category;

  /// Maps measurement units to their "above" and "below" counterparts dynamically.
  static final Map<MeasurementUnit, Map<String, MeasurementUnit?>> _relations = {
    ton: {'above': null, 'below': kilogram},
    kilogram: {'above': ton, 'below': gram},
    gram: {'above': kilogram, 'below': milligram},
    milligram: {'above': gram, 'below': microgram},
    microgram: {'above': milligram, 'below': null},
    ounce: {'above': null, 'below': null},
    kilometer: {'above': null, 'below': meter},
    mile: {'above': null, 'below': yard},
    meter: {'above': kilometer, 'below': centimeter},
    centimeter: {'above': meter, 'below': millimeter},
    millimeter: {'above': centimeter, 'below': null},
    yard: {'above': mile, 'below': foot},
    foot: {'above': yard, 'below': inch},
    inch: {'above': foot, 'below': null},
    hectare: {'above': null, 'below': squareMeter},
    squareMeter: {'above': hectare, 'below': squareCentimeter},
    squareCentimeter: {'above': squareMeter, 'below': null},
    cubicMeter: {'above': null, 'below': liter},
    kiloliter: {'above': cubicMeter, 'below': liter},
    liter: {'above': kiloliter, 'below': milliliter},
    milliliter: {'above': liter, 'below': null},
    hour: {'above': null, 'below': minute},
    minute: {'above': hour, 'below': second},
    second: {'above': minute, 'below': millisecond},
    millisecond: {'above': second, 'below': null},
    toman: {'above': null, 'below': rial},
    rial: {'above': toman, 'below': null},
    dollar: {'above': null, 'below': null},
    euro: {'above': null, 'below': null},
    book: {'above': collection, 'below': page},
    collection: {'above': null, 'below': book},
    page: {'above': book, 'below': item},
    item: {'above': page, 'below': number},
    number: {'above': item, 'below': null},
    custom: {'above': null, 'below': null},
  };

  /// Returns the next larger measurement unit, if applicable.
  MeasurementUnit? get nextLarger => _relations[this]?['above'];

  /// Returns the next smaller measurement unit, if applicable.
  MeasurementUnit? get nextSmaller => _relations[this]?['below'];

  /// Retrieves a [MeasurementUnit] by its English name.
  static MeasurementUnit fromName(String name) {
    return MeasurementUnit.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The CustomeMeasurementUnit "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using its index.
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= MeasurementUnit.values.length) {
      throw Exception('The CustomeMeasurementUnit index $index is not valid.');
    }
    final item = MeasurementUnit.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  /// Returns the English name with proper capitalization.
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for VM display.
  String get nameInPersian => _inPersian;
}
