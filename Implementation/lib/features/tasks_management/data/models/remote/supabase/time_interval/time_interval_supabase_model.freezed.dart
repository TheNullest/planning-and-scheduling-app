// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_interval_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeIntervalSupabaseModel _$TimeIntervalSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _TimeIntervalSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TimeIntervalSupabaseModel {
  @JsonKey(name: 'main_task_id')
  String get mainTaskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_task_id')
  String get subTaskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime get startAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'spent_time', fromJson: _durationFromJson, toJson: _durationToJson)
  Duration? get spentTime => throw _privateConstructorUsedError;

  /// Serializes this TimeIntervalSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeIntervalSupabaseModelCopyWith<TimeIntervalSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalSupabaseModelCopyWith<$Res> {
  factory $TimeIntervalSupabaseModelCopyWith(TimeIntervalSupabaseModel value,
          $Res Function(TimeIntervalSupabaseModel) then) =
      _$TimeIntervalSupabaseModelCopyWithImpl<$Res, TimeIntervalSupabaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'main_task_id') String mainTaskId,
      @JsonKey(name: 'sub_task_id') String subTaskId,
      @JsonKey(name: 'start_at') DateTime startAt,
      String? id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      Duration? spentTime});
}

/// @nodoc
class _$TimeIntervalSupabaseModelCopyWithImpl<$Res,
        $Val extends TimeIntervalSupabaseModel>
    implements $TimeIntervalSupabaseModelCopyWith<$Res> {
  _$TimeIntervalSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainTaskId = null,
    Object? subTaskId = null,
    Object? startAt = null,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? endAt = freezed,
    Object? spentTime = freezed,
  }) {
    return _then(_value.copyWith(
      mainTaskId: null == mainTaskId
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      subTaskId: null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      spentTime: freezed == spentTime
          ? _value.spentTime
          : spentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeIntervalSupabaseModelImplCopyWith<$Res>
    implements $TimeIntervalSupabaseModelCopyWith<$Res> {
  factory _$$TimeIntervalSupabaseModelImplCopyWith(
          _$TimeIntervalSupabaseModelImpl value,
          $Res Function(_$TimeIntervalSupabaseModelImpl) then) =
      __$$TimeIntervalSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main_task_id') String mainTaskId,
      @JsonKey(name: 'sub_task_id') String subTaskId,
      @JsonKey(name: 'start_at') DateTime startAt,
      String? id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      Duration? spentTime});
}

/// @nodoc
class __$$TimeIntervalSupabaseModelImplCopyWithImpl<$Res>
    extends _$TimeIntervalSupabaseModelCopyWithImpl<$Res,
        _$TimeIntervalSupabaseModelImpl>
    implements _$$TimeIntervalSupabaseModelImplCopyWith<$Res> {
  __$$TimeIntervalSupabaseModelImplCopyWithImpl(
      _$TimeIntervalSupabaseModelImpl _value,
      $Res Function(_$TimeIntervalSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainTaskId = null,
    Object? subTaskId = null,
    Object? startAt = null,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? endAt = freezed,
    Object? spentTime = freezed,
  }) {
    return _then(_$TimeIntervalSupabaseModelImpl(
      mainTaskId: null == mainTaskId
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      subTaskId: null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      spentTime: freezed == spentTime
          ? _value.spentTime
          : spentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeIntervalSupabaseModelImpl implements _TimeIntervalSupabaseModel {
  const _$TimeIntervalSupabaseModelImpl(
      {@JsonKey(name: 'main_task_id') required this.mainTaskId,
      @JsonKey(name: 'sub_task_id') required this.subTaskId,
      @JsonKey(name: 'start_at') required this.startAt,
      required this.id,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'end_at') this.endAt,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      this.spentTime});

  factory _$TimeIntervalSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeIntervalSupabaseModelImplFromJson(json);

  @override
  @JsonKey(name: 'main_task_id')
  final String mainTaskId;
  @override
  @JsonKey(name: 'sub_task_id')
  final String subTaskId;
  @override
  @JsonKey(name: 'start_at')
  final DateTime startAt;
  @override
  final String? id;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'end_at')
  final DateTime? endAt;
  @override
  @JsonKey(
      name: 'spent_time', fromJson: _durationFromJson, toJson: _durationToJson)
  final Duration? spentTime;

  @override
  String toString() {
    return 'TimeIntervalSupabaseModel(mainTaskId: $mainTaskId, subTaskId: $subTaskId, startAt: $startAt, id: $id, updatedAt: $updatedAt, description: $description, createdAt: $createdAt, userId: $userId, endAt: $endAt, spentTime: $spentTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeIntervalSupabaseModelImpl &&
            (identical(other.mainTaskId, mainTaskId) ||
                other.mainTaskId == mainTaskId) &&
            (identical(other.subTaskId, subTaskId) ||
                other.subTaskId == subTaskId) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.spentTime, spentTime) ||
                other.spentTime == spentTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mainTaskId, subTaskId, startAt,
      id, updatedAt, description, createdAt, userId, endAt, spentTime);

  /// Create a copy of TimeIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeIntervalSupabaseModelImplCopyWith<_$TimeIntervalSupabaseModelImpl>
      get copyWith => __$$TimeIntervalSupabaseModelImplCopyWithImpl<
          _$TimeIntervalSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeIntervalSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TimeIntervalSupabaseModel implements TimeIntervalSupabaseModel {
  const factory _TimeIntervalSupabaseModel(
      {@JsonKey(name: 'main_task_id') required final String mainTaskId,
      @JsonKey(name: 'sub_task_id') required final String subTaskId,
      @JsonKey(name: 'start_at') required final DateTime startAt,
      required final String? id,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'end_at') final DateTime? endAt,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      final Duration? spentTime}) = _$TimeIntervalSupabaseModelImpl;

  factory _TimeIntervalSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TimeIntervalSupabaseModelImpl.fromJson;

  @override
  @JsonKey(name: 'main_task_id')
  String get mainTaskId;
  @override
  @JsonKey(name: 'sub_task_id')
  String get subTaskId;
  @override
  @JsonKey(name: 'start_at')
  DateTime get startAt;
  @override
  String? get id;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'end_at')
  DateTime? get endAt;
  @override
  @JsonKey(
      name: 'spent_time', fromJson: _durationFromJson, toJson: _durationToJson)
  Duration? get spentTime;

  /// Create a copy of TimeIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeIntervalSupabaseModelImplCopyWith<_$TimeIntervalSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
