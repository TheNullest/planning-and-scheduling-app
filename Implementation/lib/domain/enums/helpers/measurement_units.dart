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
  final MeasurementUnit ton = MeasurementUnit.ton;
  final MeasurementUnit kilogram = MeasurementUnit.kilogram;
  final MeasurementUnit gram = MeasurementUnit.gram;
  final MeasurementUnit milligram = MeasurementUnit.milligram;
  final MeasurementUnit microgram = MeasurementUnit.microgram;
  final MeasurementUnit ounce = MeasurementUnit.ounce;
}

/// Represents length units.
class _LengthUnits {
  final MeasurementUnit kilometer = MeasurementUnit.kilometer;
  final MeasurementUnit mile = MeasurementUnit.mile;
  final MeasurementUnit meter = MeasurementUnit.meter;
  final MeasurementUnit centimeter = MeasurementUnit.centimeter;
  final MeasurementUnit millimeter = MeasurementUnit.millimeter;
  final MeasurementUnit yard = MeasurementUnit.yard;
  final MeasurementUnit foot = MeasurementUnit.foot;
  final MeasurementUnit inch = MeasurementUnit.inch;
}

/// Represents area units.
class _AreaUnits {
  final MeasurementUnit hectare = MeasurementUnit.hectare;
  final MeasurementUnit squareMeter = MeasurementUnit.squareMeter;
  final MeasurementUnit squareCentimeter = MeasurementUnit.squareCentimeter;
}

/// Represents volume units.
class _VolumeUnits {
  final MeasurementUnit cubicMeter = MeasurementUnit.cubicMeter;
  final MeasurementUnit kiloliter = MeasurementUnit.kiloliter;
  final MeasurementUnit liter = MeasurementUnit.liter;
  final MeasurementUnit milliliter = MeasurementUnit.milliliter;
}

/// Represents time units.
class _TimeUnits {
  final MeasurementUnit hour = MeasurementUnit.hour;
  final MeasurementUnit minute = MeasurementUnit.minute;
  final MeasurementUnit second = MeasurementUnit.second;
  final MeasurementUnit millisecond = MeasurementUnit.millisecond;
}

/// Represents currency units.
class _CurrencyUnits {
  final Type toman = MeasurementUnit;
  final MeasurementUnit rial = MeasurementUnit.rial;
  final MeasurementUnit dollar = MeasurementUnit.dollar;
  final MeasurementUnit euro = MeasurementUnit.euro;
}

/// Represents count units.
class _CountUnits {
  final MeasurementUnit book = MeasurementUnit.book;
  final MeasurementUnit collection = MeasurementUnit.collection;
  final MeasurementUnit page = MeasurementUnit.page;
  final MeasurementUnit item = MeasurementUnit.item;
  final MeasurementUnit number = MeasurementUnit.number;
}

/// Represents custom units.
class _CustomUnits {
  final MeasurementUnit custom = MeasurementUnit.custom;
}
