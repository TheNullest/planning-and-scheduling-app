// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoalSupabaseModel _$GoalSupabaseModelFromJson(Map<String, dynamic> json) {
  return _GoalSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$GoalSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  String get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_type')
  String get refType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'goal_constraint')
  String get goalConstraint => throw _privateConstructorUsedError;
  @JsonKey(name: 'minutely_target')
  double get minutelyTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_target')
  double get hourlyTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_target')
  double get dailyTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_target')
  double get weeklyTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_target')
  double get monthlyTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'yearly_target')
  double get yearlyTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_unit')
  String? get measurementUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_measurement_unit_id')
  String? get customMeasurementUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this GoalSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalSupabaseModelCopyWith<GoalSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalSupabaseModelCopyWith<$Res> {
  factory $GoalSupabaseModelCopyWith(
          GoalSupabaseModel value, $Res Function(GoalSupabaseModel) then) =
      _$GoalSupabaseModelCopyWithImpl<$Res, GoalSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      String refId,
      @JsonKey(name: 'ref_type') String refType,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'goal_constraint') String goalConstraint,
      @JsonKey(name: 'minutely_target') double minutelyTarget,
      @JsonKey(name: 'hourly_target') double hourlyTarget,
      @JsonKey(name: 'daily_target') double dailyTarget,
      @JsonKey(name: 'weekly_target') double weeklyTarget,
      @JsonKey(name: 'monthly_target') double monthlyTarget,
      @JsonKey(name: 'yearly_target') double yearlyTarget,
      @JsonKey(name: 'measurement_unit') String? measurementUnit,
      @JsonKey(name: 'custom_measurement_unit_id')
      String? customMeasurementUnitId,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$GoalSupabaseModelCopyWithImpl<$Res, $Val extends GoalSupabaseModel>
    implements $GoalSupabaseModelCopyWith<$Res> {
  _$GoalSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? refId = null,
    Object? refType = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? goalConstraint = null,
    Object? minutelyTarget = null,
    Object? hourlyTarget = null,
    Object? dailyTarget = null,
    Object? weeklyTarget = null,
    Object? monthlyTarget = null,
    Object? yearlyTarget = null,
    Object? measurementUnit = freezed,
    Object? customMeasurementUnitId = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      refType: null == refType
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goalConstraint: null == goalConstraint
          ? _value.goalConstraint
          : goalConstraint // ignore: cast_nullable_to_non_nullable
              as String,
      minutelyTarget: null == minutelyTarget
          ? _value.minutelyTarget
          : minutelyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      hourlyTarget: null == hourlyTarget
          ? _value.hourlyTarget
          : hourlyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      dailyTarget: null == dailyTarget
          ? _value.dailyTarget
          : dailyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyTarget: null == weeklyTarget
          ? _value.weeklyTarget
          : weeklyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      yearlyTarget: null == yearlyTarget
          ? _value.yearlyTarget
          : yearlyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      measurementUnit: freezed == measurementUnit
          ? _value.measurementUnit
          : measurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      customMeasurementUnitId: freezed == customMeasurementUnitId
          ? _value.customMeasurementUnitId
          : customMeasurementUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalSupabaseModelImplCopyWith<$Res>
    implements $GoalSupabaseModelCopyWith<$Res> {
  factory _$$GoalSupabaseModelImplCopyWith(_$GoalSupabaseModelImpl value,
          $Res Function(_$GoalSupabaseModelImpl) then) =
      __$$GoalSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String refId,
      @JsonKey(name: 'ref_type') String refType,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'goal_constraint') String goalConstraint,
      @JsonKey(name: 'minutely_target') double minutelyTarget,
      @JsonKey(name: 'hourly_target') double hourlyTarget,
      @JsonKey(name: 'daily_target') double dailyTarget,
      @JsonKey(name: 'weekly_target') double weeklyTarget,
      @JsonKey(name: 'monthly_target') double monthlyTarget,
      @JsonKey(name: 'yearly_target') double yearlyTarget,
      @JsonKey(name: 'measurement_unit') String? measurementUnit,
      @JsonKey(name: 'custom_measurement_unit_id')
      String? customMeasurementUnitId,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$GoalSupabaseModelImplCopyWithImpl<$Res>
    extends _$GoalSupabaseModelCopyWithImpl<$Res, _$GoalSupabaseModelImpl>
    implements _$$GoalSupabaseModelImplCopyWith<$Res> {
  __$$GoalSupabaseModelImplCopyWithImpl(_$GoalSupabaseModelImpl _value,
      $Res Function(_$GoalSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? refId = null,
    Object? refType = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? goalConstraint = null,
    Object? minutelyTarget = null,
    Object? hourlyTarget = null,
    Object? dailyTarget = null,
    Object? weeklyTarget = null,
    Object? monthlyTarget = null,
    Object? yearlyTarget = null,
    Object? measurementUnit = freezed,
    Object? customMeasurementUnitId = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$GoalSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      refType: null == refType
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goalConstraint: null == goalConstraint
          ? _value.goalConstraint
          : goalConstraint // ignore: cast_nullable_to_non_nullable
              as String,
      minutelyTarget: null == minutelyTarget
          ? _value.minutelyTarget
          : minutelyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      hourlyTarget: null == hourlyTarget
          ? _value.hourlyTarget
          : hourlyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      dailyTarget: null == dailyTarget
          ? _value.dailyTarget
          : dailyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyTarget: null == weeklyTarget
          ? _value.weeklyTarget
          : weeklyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      yearlyTarget: null == yearlyTarget
          ? _value.yearlyTarget
          : yearlyTarget // ignore: cast_nullable_to_non_nullable
              as double,
      measurementUnit: freezed == measurementUnit
          ? _value.measurementUnit
          : measurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      customMeasurementUnitId: freezed == customMeasurementUnitId
          ? _value.customMeasurementUnitId
          : customMeasurementUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalSupabaseModelImpl implements _GoalSupabaseModel {
  const _$GoalSupabaseModelImpl(
      {required this.id,
      required this.refId,
      @JsonKey(name: 'ref_type') required this.refType,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'goal_constraint') required this.goalConstraint,
      @JsonKey(name: 'minutely_target') required this.minutelyTarget,
      @JsonKey(name: 'hourly_target') required this.hourlyTarget,
      @JsonKey(name: 'daily_target') required this.dailyTarget,
      @JsonKey(name: 'weekly_target') required this.weeklyTarget,
      @JsonKey(name: 'monthly_target') required this.monthlyTarget,
      @JsonKey(name: 'yearly_target') required this.yearlyTarget,
      @JsonKey(name: 'measurement_unit') this.measurementUnit,
      @JsonKey(name: 'custom_measurement_unit_id') this.customMeasurementUnitId,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description});

  factory _$GoalSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String refId;
  @override
  @JsonKey(name: 'ref_type')
  final String refType;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'goal_constraint')
  final String goalConstraint;
  @override
  @JsonKey(name: 'minutely_target')
  final double minutelyTarget;
  @override
  @JsonKey(name: 'hourly_target')
  final double hourlyTarget;
  @override
  @JsonKey(name: 'daily_target')
  final double dailyTarget;
  @override
  @JsonKey(name: 'weekly_target')
  final double weeklyTarget;
  @override
  @JsonKey(name: 'monthly_target')
  final double monthlyTarget;
  @override
  @JsonKey(name: 'yearly_target')
  final double yearlyTarget;
  @override
  @JsonKey(name: 'measurement_unit')
  final String? measurementUnit;
  @override
  @JsonKey(name: 'custom_measurement_unit_id')
  final String? customMeasurementUnitId;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'GoalSupabaseModel(id: $id, refId: $refId, refType: $refType, userId: $userId, createdAt: $createdAt, goalConstraint: $goalConstraint, minutelyTarget: $minutelyTarget, hourlyTarget: $hourlyTarget, dailyTarget: $dailyTarget, weeklyTarget: $weeklyTarget, monthlyTarget: $monthlyTarget, yearlyTarget: $yearlyTarget, measurementUnit: $measurementUnit, customMeasurementUnitId: $customMeasurementUnitId, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.refType, refType) || other.refType == refType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.goalConstraint, goalConstraint) ||
                other.goalConstraint == goalConstraint) &&
            (identical(other.minutelyTarget, minutelyTarget) ||
                other.minutelyTarget == minutelyTarget) &&
            (identical(other.hourlyTarget, hourlyTarget) ||
                other.hourlyTarget == hourlyTarget) &&
            (identical(other.dailyTarget, dailyTarget) ||
                other.dailyTarget == dailyTarget) &&
            (identical(other.weeklyTarget, weeklyTarget) ||
                other.weeklyTarget == weeklyTarget) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget) &&
            (identical(other.yearlyTarget, yearlyTarget) ||
                other.yearlyTarget == yearlyTarget) &&
            (identical(other.measurementUnit, measurementUnit) ||
                other.measurementUnit == measurementUnit) &&
            (identical(
                    other.customMeasurementUnitId, customMeasurementUnitId) ||
                other.customMeasurementUnitId == customMeasurementUnitId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      refId,
      refType,
      userId,
      createdAt,
      goalConstraint,
      minutelyTarget,
      hourlyTarget,
      dailyTarget,
      weeklyTarget,
      monthlyTarget,
      yearlyTarget,
      measurementUnit,
      customMeasurementUnitId,
      updatedAt,
      description);

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalSupabaseModelImplCopyWith<_$GoalSupabaseModelImpl> get copyWith =>
      __$$GoalSupabaseModelImplCopyWithImpl<_$GoalSupabaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _GoalSupabaseModel implements GoalSupabaseModel {
  const factory _GoalSupabaseModel(
      {required final String id,
      required final String refId,
      @JsonKey(name: 'ref_type') required final String refType,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'goal_constraint') required final String goalConstraint,
      @JsonKey(name: 'minutely_target') required final double minutelyTarget,
      @JsonKey(name: 'hourly_target') required final double hourlyTarget,
      @JsonKey(name: 'daily_target') required final double dailyTarget,
      @JsonKey(name: 'weekly_target') required final double weeklyTarget,
      @JsonKey(name: 'monthly_target') required final double monthlyTarget,
      @JsonKey(name: 'yearly_target') required final double yearlyTarget,
      @JsonKey(name: 'measurement_unit') final String? measurementUnit,
      @JsonKey(name: 'custom_measurement_unit_id')
      final String? customMeasurementUnitId,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description}) = _$GoalSupabaseModelImpl;

  factory _GoalSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$GoalSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get refId;
  @override
  @JsonKey(name: 'ref_type')
  String get refType;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'goal_constraint')
  String get goalConstraint;
  @override
  @JsonKey(name: 'minutely_target')
  double get minutelyTarget;
  @override
  @JsonKey(name: 'hourly_target')
  double get hourlyTarget;
  @override
  @JsonKey(name: 'daily_target')
  double get dailyTarget;
  @override
  @JsonKey(name: 'weekly_target')
  double get weeklyTarget;
  @override
  @JsonKey(name: 'monthly_target')
  double get monthlyTarget;
  @override
  @JsonKey(name: 'yearly_target')
  double get yearlyTarget;
  @override
  @JsonKey(name: 'measurement_unit')
  String? get measurementUnit;
  @override
  @JsonKey(name: 'custom_measurement_unit_id')
  String? get customMeasurementUnitId;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalSupabaseModelImplCopyWith<_$GoalSupabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
