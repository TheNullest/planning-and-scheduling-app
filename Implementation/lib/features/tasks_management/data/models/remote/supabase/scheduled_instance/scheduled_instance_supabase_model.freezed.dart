// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_instance_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledInstanceSupabaseModel _$ScheduledInstanceSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _ScheduledInstanceSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduledInstanceSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date_time')
  DateTime get startDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date_time')
  DateTime get endDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduler_id')
  String get schedulerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduler_type')
  String get schedulerType => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_status')
  String get taskStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'sequence_number')
  int get sequenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_percentage')
  int get successPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'exception_reason')
  String? get exceptionReason => throw _privateConstructorUsedError;

  /// Serializes this ScheduledInstanceSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduledInstanceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduledInstanceSupabaseModelCopyWith<ScheduledInstanceSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledInstanceSupabaseModelCopyWith<$Res> {
  factory $ScheduledInstanceSupabaseModelCopyWith(
          ScheduledInstanceSupabaseModel value,
          $Res Function(ScheduledInstanceSupabaseModel) then) =
      _$ScheduledInstanceSupabaseModelCopyWithImpl<$Res,
          ScheduledInstanceSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'start_date_time') DateTime startDateTime,
      @JsonKey(name: 'end_date_time') DateTime endDateTime,
      @JsonKey(name: 'scheduler_id') String schedulerId,
      @JsonKey(name: 'scheduler_type') String schedulerType,
      @JsonKey(name: 'task_status') String taskStatus,
      @JsonKey(name: 'sequence_number') int sequenceNumber,
      @JsonKey(name: 'success_percentage') int successPercentage,
      @JsonKey(name: 'timezone') String timezone,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'exception_reason') String? exceptionReason});
}

/// @nodoc
class _$ScheduledInstanceSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduledInstanceSupabaseModel>
    implements $ScheduledInstanceSupabaseModelCopyWith<$Res> {
  _$ScheduledInstanceSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledInstanceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? taskId = null,
    Object? createdAt = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? schedulerId = null,
    Object? schedulerType = null,
    Object? taskStatus = null,
    Object? sequenceNumber = null,
    Object? successPercentage = null,
    Object? timezone = null,
    Object? updatedAt = freezed,
    Object? exceptionReason = freezed,
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
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulerId: null == schedulerId
          ? _value.schedulerId
          : schedulerId // ignore: cast_nullable_to_non_nullable
              as String,
      schedulerType: null == schedulerType
          ? _value.schedulerType
          : schedulerType // ignore: cast_nullable_to_non_nullable
              as String,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      successPercentage: null == successPercentage
          ? _value.successPercentage
          : successPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exceptionReason: freezed == exceptionReason
          ? _value.exceptionReason
          : exceptionReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduledInstanceSupabaseModelImplCopyWith<$Res>
    implements $ScheduledInstanceSupabaseModelCopyWith<$Res> {
  factory _$$ScheduledInstanceSupabaseModelImplCopyWith(
          _$ScheduledInstanceSupabaseModelImpl value,
          $Res Function(_$ScheduledInstanceSupabaseModelImpl) then) =
      __$$ScheduledInstanceSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'start_date_time') DateTime startDateTime,
      @JsonKey(name: 'end_date_time') DateTime endDateTime,
      @JsonKey(name: 'scheduler_id') String schedulerId,
      @JsonKey(name: 'scheduler_type') String schedulerType,
      @JsonKey(name: 'task_status') String taskStatus,
      @JsonKey(name: 'sequence_number') int sequenceNumber,
      @JsonKey(name: 'success_percentage') int successPercentage,
      @JsonKey(name: 'timezone') String timezone,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'exception_reason') String? exceptionReason});
}

/// @nodoc
class __$$ScheduledInstanceSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduledInstanceSupabaseModelCopyWithImpl<$Res,
        _$ScheduledInstanceSupabaseModelImpl>
    implements _$$ScheduledInstanceSupabaseModelImplCopyWith<$Res> {
  __$$ScheduledInstanceSupabaseModelImplCopyWithImpl(
      _$ScheduledInstanceSupabaseModelImpl _value,
      $Res Function(_$ScheduledInstanceSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledInstanceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? taskId = null,
    Object? createdAt = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? schedulerId = null,
    Object? schedulerType = null,
    Object? taskStatus = null,
    Object? sequenceNumber = null,
    Object? successPercentage = null,
    Object? timezone = null,
    Object? updatedAt = freezed,
    Object? exceptionReason = freezed,
  }) {
    return _then(_$ScheduledInstanceSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedulerId: null == schedulerId
          ? _value.schedulerId
          : schedulerId // ignore: cast_nullable_to_non_nullable
              as String,
      schedulerType: null == schedulerType
          ? _value.schedulerType
          : schedulerType // ignore: cast_nullable_to_non_nullable
              as String,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      successPercentage: null == successPercentage
          ? _value.successPercentage
          : successPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exceptionReason: freezed == exceptionReason
          ? _value.exceptionReason
          : exceptionReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduledInstanceSupabaseModelImpl
    implements _ScheduledInstanceSupabaseModel {
  const _$ScheduledInstanceSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'start_date_time') required this.startDateTime,
      @JsonKey(name: 'end_date_time') required this.endDateTime,
      @JsonKey(name: 'scheduler_id') required this.schedulerId,
      @JsonKey(name: 'scheduler_type') required this.schedulerType,
      @JsonKey(name: 'task_status') required this.taskStatus,
      @JsonKey(name: 'sequence_number') required this.sequenceNumber,
      @JsonKey(name: 'success_percentage') required this.successPercentage,
      @JsonKey(name: 'timezone') required this.timezone,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'exception_reason') this.exceptionReason});

  factory _$ScheduledInstanceSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduledInstanceSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'start_date_time')
  final DateTime startDateTime;
  @override
  @JsonKey(name: 'end_date_time')
  final DateTime endDateTime;
  @override
  @JsonKey(name: 'scheduler_id')
  final String schedulerId;
  @override
  @JsonKey(name: 'scheduler_type')
  final String schedulerType;
  @override
  @JsonKey(name: 'task_status')
  final String taskStatus;
  @override
  @JsonKey(name: 'sequence_number')
  final int sequenceNumber;
  @override
  @JsonKey(name: 'success_percentage')
  final int successPercentage;
  @override
  @JsonKey(name: 'timezone')
  final String timezone;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'exception_reason')
  final String? exceptionReason;

  @override
  String toString() {
    return 'ScheduledInstanceSupabaseModel(id: $id, userId: $userId, taskId: $taskId, createdAt: $createdAt, startDateTime: $startDateTime, endDateTime: $endDateTime, schedulerId: $schedulerId, schedulerType: $schedulerType, taskStatus: $taskStatus, sequenceNumber: $sequenceNumber, successPercentage: $successPercentage, timezone: $timezone, updatedAt: $updatedAt, exceptionReason: $exceptionReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledInstanceSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.schedulerId, schedulerId) ||
                other.schedulerId == schedulerId) &&
            (identical(other.schedulerType, schedulerType) ||
                other.schedulerType == schedulerType) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus) &&
            (identical(other.sequenceNumber, sequenceNumber) ||
                other.sequenceNumber == sequenceNumber) &&
            (identical(other.successPercentage, successPercentage) ||
                other.successPercentage == successPercentage) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.exceptionReason, exceptionReason) ||
                other.exceptionReason == exceptionReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      taskId,
      createdAt,
      startDateTime,
      endDateTime,
      schedulerId,
      schedulerType,
      taskStatus,
      sequenceNumber,
      successPercentage,
      timezone,
      updatedAt,
      exceptionReason);

  /// Create a copy of ScheduledInstanceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledInstanceSupabaseModelImplCopyWith<
          _$ScheduledInstanceSupabaseModelImpl>
      get copyWith => __$$ScheduledInstanceSupabaseModelImplCopyWithImpl<
          _$ScheduledInstanceSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledInstanceSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduledInstanceSupabaseModel
    implements ScheduledInstanceSupabaseModel {
  const factory _ScheduledInstanceSupabaseModel(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'start_date_time') required final DateTime startDateTime,
      @JsonKey(name: 'end_date_time') required final DateTime endDateTime,
      @JsonKey(name: 'scheduler_id') required final String schedulerId,
      @JsonKey(name: 'scheduler_type') required final String schedulerType,
      @JsonKey(name: 'task_status') required final String taskStatus,
      @JsonKey(name: 'sequence_number') required final int sequenceNumber,
      @JsonKey(name: 'success_percentage') required final int successPercentage,
      @JsonKey(name: 'timezone') required final String timezone,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'exception_reason')
      final String? exceptionReason}) = _$ScheduledInstanceSupabaseModelImpl;

  factory _ScheduledInstanceSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$ScheduledInstanceSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'start_date_time')
  DateTime get startDateTime;
  @override
  @JsonKey(name: 'end_date_time')
  DateTime get endDateTime;
  @override
  @JsonKey(name: 'scheduler_id')
  String get schedulerId;
  @override
  @JsonKey(name: 'scheduler_type')
  String get schedulerType;
  @override
  @JsonKey(name: 'task_status')
  String get taskStatus;
  @override
  @JsonKey(name: 'sequence_number')
  int get sequenceNumber;
  @override
  @JsonKey(name: 'success_percentage')
  int get successPercentage;
  @override
  @JsonKey(name: 'timezone')
  String get timezone;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'exception_reason')
  String? get exceptionReason;

  /// Create a copy of ScheduledInstanceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledInstanceSupabaseModelImplCopyWith<
          _$ScheduledInstanceSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
