import 'package:hive/hive.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// Represents a measurement unit used within the application for quantifying values.
///
/// The [CustomMeasurementUnitEntity] encapsulates details about various measurement units.
/// Each instance stores:
/// - **[title]**: The descriptive name of the measurement unit (e.g., "Meter", "Kilogram").
/// - **[isDouble]**: A flag indicating whether the measurement unit supports decimal values.
/// - **[iconCode]**: An integer code that identifies an icon for visual representation in the UI.
///
/// This entity extends [BaseEntityAbstraction], inheriting common properties such as [id],
/// [userId], [createdAt], [updatedAt], and [description].
///
/// **Example:**
/// ```dart
/// final customMeasurementUnitId = CustomeMeasurementUnitEntity(
///   id: 'unit_001',
///   userId: 'user_789',
///   createdAt: DateTime.now(),
///   updatedAt: DateTime.now(),
///   description: 'Unit for measuring distances',
///   title: 'Meter',
///   isDouble: true,
///   iconCode: 0x1F6FA, // Sample icon code
/// );
/// ```
class CustomMeasurementUnitEntity extends BaseEntityAbstraction {
  /// Creates a [CustomMeasurementUnitEntity] with the provided properties.
  ///
  /// - [title]: The name of the measurement unit (for example, "Meter" or "Kilogram").
  /// - [isDouble]: If true, values for this measurement unit are expected to be stored as doubles.
  /// - [iconCode]: An integer code representing an associated icon for the measurement unit.
  CustomMeasurementUnitEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.description,
    required super.updatedAt,
    required this.title,
    required this.isDouble,
    required this.iconCode,
  });

  /// A human-readable title for the measurement unit.
  @HiveField(11)
  final String title;

  /// Indicates whether values for this measurement unit should be stored as doubles.
  @HiveField(12)
  final bool isDouble;

  /// An integer code representing the icon resource associated with this measurement unit.
  @HiveField(13)
  final int iconCode;

  @override
  CustomMeasurementUnitEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? title,
    String? description,
    int? iconCode,
    bool? isDouble,
  }) =>
      CustomMeasurementUnitEntity(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        description: description ?? this.description,
        iconCode: iconCode ?? this.iconCode,
        isDouble: isDouble ?? this.isDouble,
      );

  @override
  List<Object?> get props => [
        ...super.props,
        title,
        isDouble,
        iconCode,
      ];
}
