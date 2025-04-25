import 'package:zamaan/domain/enums/hive/measurement_unit.dart';

class MeasurementUnits {
  // -------------------
  // Mass Category
  // -------------------
  static final mass = _MassUnits();

  // -------------------
  // Length Category
  // -------------------
  static final length = _LengthUnits();

  // -------------------
  // Area Category
  // -------------------
  static final area = _AreaUnits();

  // -------------------
  // Volume Category
  // -------------------
  static final volume = _VolumeUnits();

  // -------------------
  // Time Category
  // -------------------
  static final time = _TimeUnits();

  // -------------------
  // Currency Category
  // -------------------
  static final currency = _CurrencyUnits();

  // -------------------
  // Count Category
  // -------------------
  static final count = _CountUnits();

  // -------------------
  // Custom Category
  // -------------------
  static final custom = _CustomUnits();
}

/// Represents mass units.
class _MassUnits {
  final ton = MeasurementUnit.ton;
  final kilogram = MeasurementUnit.kilogram;
  final gram = MeasurementUnit.gram;
  final milligram = MeasurementUnit.milligram;
  final microgram = MeasurementUnit.microgram;
  final ounce = MeasurementUnit.ounce;
}

/// Represents length units.
class _LengthUnits {
  final kilometer = MeasurementUnit.kilometer;
  final mile = MeasurementUnit.mile;
  final meter = MeasurementUnit.meter;
  final centimeter = MeasurementUnit.centimeter;
  final millimeter = MeasurementUnit.millimeter;
  final yard = MeasurementUnit.yard;
  final foot = MeasurementUnit.foot;
  final inch = MeasurementUnit.inch;
}

/// Represents area units.
class _AreaUnits {
  final hectare = MeasurementUnit.hectare;
  final squareMeter = MeasurementUnit.squareMeter;
  final squareCentimeter = MeasurementUnit.squareCentimeter;
}

/// Represents volume units.
class _VolumeUnits {
  final cubicMeter = MeasurementUnit.cubicMeter;
  final kiloliter = MeasurementUnit.kiloliter;
  final liter = MeasurementUnit.liter;
  final milliliter = MeasurementUnit.milliliter;
}

/// Represents time units.
class _TimeUnits {
  final hour = MeasurementUnit.hour;
  final minute = MeasurementUnit.minute;
  final second = MeasurementUnit.second;
  final millisecond = MeasurementUnit.millisecond;
}

/// Represents currency units.
class _CurrencyUnits {
  final toman = MeasurementUnit;
  final rial = MeasurementUnit.rial;
  final dollar = MeasurementUnit.dollar;
  final euro = MeasurementUnit.euro;
}

/// Represents count units.
class _CountUnits {
  final book = MeasurementUnit.book;
  final collection = MeasurementUnit.collection;
  final page = MeasurementUnit.page;
  final item = MeasurementUnit.item;
  final number = MeasurementUnit.number;
}

/// Represents custom units.
class _CustomUnits {
  final custom = MeasurementUnit.custom;
}
