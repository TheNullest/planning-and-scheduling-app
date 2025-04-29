// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_day_definition_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledDayDefinitionSupabaseModel
    _$ScheduledDayDefinitionSupabaseModelFromJson(Map<String, dynamic> json) {
  return _ScheduledDayDefinitionSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduledDayDefinitionSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_definition_id')
  String get scheduleDefinitionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_type')
  String get dayType => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_value')
  String get dayValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_repeat')
  bool get canRepeat => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_times')
  List<String> get scheduledTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'enforce_schedule_bounds')
  bool get enforceScheduleBounds => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScheduledDayDefinitionSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduledDayDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduledDayDefinitionSupabaseModelCopyWith<
          ScheduledDayDefinitionSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledDayDefinitionSupabaseModelCopyWith<$Res> {
  factory $ScheduledDayDefinitionSupabaseModelCopyWith(
          ScheduledDayDefinitionSupabaseModel value,
          $Res Function(ScheduledDayDefinitionSupabaseModel) then) =
      _$ScheduledDayDefinitionSupabaseModelCopyWithImpl<$Res,
          ScheduledDayDefinitionSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'schedule_definition_id') String scheduleDefinitionId,
      @JsonKey(name: 'day_type') String dayType,
      @JsonKey(name: 'day_value') String dayValue,
      @JsonKey(name: 'can_repeat') bool canRepeat,
      @JsonKey(name: 'scheduled_times') List<String> scheduledTimes,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$ScheduledDayDefinitionSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduledDayDefinitionSupabaseModel>
    implements $ScheduledDayDefinitionSupabaseModelCopyWith<$Res> {
  _$ScheduledDayDefinitionSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledDayDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? scheduleDefinitionId = null,
    Object? dayType = null,
    Object? dayValue = null,
    Object? canRepeat = null,
    Object? scheduledTimes = null,
    Object? enforceScheduleBounds = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleDefinitionId: null == scheduleDefinitionId
          ? _value.scheduleDefinitionId
          : scheduleDefinitionId // ignore: cast_nullable_to_non_nullable
              as String,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as String,
      dayValue: null == dayValue
          ? _value.dayValue
          : dayValue // ignore: cast_nullable_to_non_nullable
              as String,
      canRepeat: null == canRepeat
          ? _value.canRepeat
          : canRepeat // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduledTimes: null == scheduledTimes
          ? _value.scheduledTimes
          : scheduledTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      enforceScheduleBounds: null == enforceScheduleBounds
          ? _value.enforceScheduleBounds
          : enforceScheduleBounds // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$ScheduledDayDefinitionSupabaseModelImplCopyWith<$Res>
    implements $ScheduledDayDefinitionSupabaseModelCopyWith<$Res> {
  factory _$$ScheduledDayDefinitionSupabaseModelImplCopyWith(
          _$ScheduledDayDefinitionSupabaseModelImpl value,
          $Res Function(_$ScheduledDayDefinitionSupabaseModelImpl) then) =
      __$$ScheduledDayDefinitionSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'schedule_definition_id') String scheduleDefinitionId,
      @JsonKey(name: 'day_type') String dayType,
      @JsonKey(name: 'day_value') String dayValue,
      @JsonKey(name: 'can_repeat') bool canRepeat,
      @JsonKey(name: 'scheduled_times') List<String> scheduledTimes,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$ScheduledDayDefinitionSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduledDayDefinitionSupabaseModelCopyWithImpl<$Res,
        _$ScheduledDayDefinitionSupabaseModelImpl>
    implements _$$ScheduledDayDefinitionSupabaseModelImplCopyWith<$Res> {
  __$$ScheduledDayDefinitionSupabaseModelImplCopyWithImpl(
      _$ScheduledDayDefinitionSupabaseModelImpl _value,
      $Res Function(_$ScheduledDayDefinitionSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledDayDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? scheduleDefinitionId = null,
    Object? dayType = null,
    Object? dayValue = null,
    Object? canRepeat = null,
    Object? scheduledTimes = null,
    Object? enforceScheduleBounds = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ScheduledDayDefinitionSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleDefinitionId: null == scheduleDefinitionId
          ? _value.scheduleDefinitionId
          : scheduleDefinitionId // ignore: cast_nullable_to_non_nullable
              as String,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as String,
      dayValue: null == dayValue
          ? _value.dayValue
          : dayValue // ignore: cast_nullable_to_non_nullable
              as String,
      canRepeat: null == canRepeat
          ? _value.canRepeat
          : canRepeat // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduledTimes: null == scheduledTimes
          ? _value._scheduledTimes
          : scheduledTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      enforceScheduleBounds: null == enforceScheduleBounds
          ? _value.enforceScheduleBounds
          : enforceScheduleBounds // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$ScheduledDayDefinitionSupabaseModelImpl
    implements _ScheduledDayDefinitionSupabaseModel {
  const _$ScheduledDayDefinitionSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'schedule_definition_id')
      required this.scheduleDefinitionId,
      @JsonKey(name: 'day_type') required this.dayType,
      @JsonKey(name: 'day_value') required this.dayValue,
      @JsonKey(name: 'can_repeat') required this.canRepeat,
      @JsonKey(name: 'scheduled_times')
      required final List<String> scheduledTimes,
      @JsonKey(name: 'enforce_schedule_bounds')
      required this.enforceScheduleBounds,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description})
      : _scheduledTimes = scheduledTimes;

  factory _$ScheduledDayDefinitionSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduledDayDefinitionSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'schedule_definition_id')
  final String scheduleDefinitionId;
  @override
  @JsonKey(name: 'day_type')
  final String dayType;
  @override
  @JsonKey(name: 'day_value')
  final String dayValue;
  @override
  @JsonKey(name: 'can_repeat')
  final bool canRepeat;
  final List<String> _scheduledTimes;
  @override
  @JsonKey(name: 'scheduled_times')
  List<String> get scheduledTimes {
    if (_scheduledTimes is EqualUnmodifiableListView) return _scheduledTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledTimes);
  }

  @override
  @JsonKey(name: 'enforce_schedule_bounds')
  final bool enforceScheduleBounds;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'ScheduledDayDefinitionSupabaseModel(id: $id, userId: $userId, createdAt: $createdAt, scheduleDefinitionId: $scheduleDefinitionId, dayType: $dayType, dayValue: $dayValue, canRepeat: $canRepeat, scheduledTimes: $scheduledTimes, enforceScheduleBounds: $enforceScheduleBounds, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledDayDefinitionSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.scheduleDefinitionId, scheduleDefinitionId) ||
                other.scheduleDefinitionId == scheduleDefinitionId) &&
            (identical(other.dayType, dayType) || other.dayType == dayType) &&
            (identical(other.dayValue, dayValue) ||
                other.dayValue == dayValue) &&
            (identical(other.canRepeat, canRepeat) ||
                other.canRepeat == canRepeat) &&
            const DeepCollectionEquality()
                .equals(other._scheduledTimes, _scheduledTimes) &&
            (identical(other.enforceScheduleBounds, enforceScheduleBounds) ||
                other.enforceScheduleBounds == enforceScheduleBounds) &&
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
      userId,
      createdAt,
      scheduleDefinitionId,
      dayType,
      dayValue,
      canRepeat,
      const DeepCollectionEquality().hash(_scheduledTimes),
      enforceScheduleBounds,
      updatedAt,
      description);

  /// Create a copy of ScheduledDayDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledDayDefinitionSupabaseModelImplCopyWith<
          _$ScheduledDayDefinitionSupabaseModelImpl>
      get copyWith => __$$ScheduledDayDefinitionSupabaseModelImplCopyWithImpl<
          _$ScheduledDayDefinitionSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledDayDefinitionSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduledDayDefinitionSupabaseModel
    implements ScheduledDayDefinitionSupabaseModel {
  const factory _ScheduledDayDefinitionSupabaseModel(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'schedule_definition_id')
      required final String scheduleDefinitionId,
      @JsonKey(name: 'day_type') required final String dayType,
      @JsonKey(name: 'day_value') required final String dayValue,
      @JsonKey(name: 'can_repeat') required final bool canRepeat,
      @JsonKey(name: 'scheduled_times')
      required final List<String> scheduledTimes,
      @JsonKey(name: 'enforce_schedule_bounds')
      required final bool enforceScheduleBounds,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description}) = _$ScheduledDayDefinitionSupabaseModelImpl;

  factory _ScheduledDayDefinitionSupabaseModel.fromJson(
          Map<String, dynamic> json) =
      _$ScheduledDayDefinitionSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'schedule_definition_id')
  String get scheduleDefinitionId;
  @override
  @JsonKey(name: 'day_type')
  String get dayType;
  @override
  @JsonKey(name: 'day_value')
  String get dayValue;
  @override
  @JsonKey(name: 'can_repeat')
  bool get canRepeat;
  @override
  @JsonKey(name: 'scheduled_times')
  List<String> get scheduledTimes;
  @override
  @JsonKey(name: 'enforce_schedule_bounds')
  bool get enforceScheduleBounds;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of ScheduledDayDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledDayDefinitionSupabaseModelImplCopyWith<
          _$ScheduledDayDefinitionSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
