// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_activity_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskActivitySupabaseModel _$TaskActivitySupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _TaskActivitySupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TaskActivitySupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_type')
  String get refType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_id')
  String get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_status')
  String get taskStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'variable_tag_ids')
  List<String> get variableTagIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduler_id')
  String? get schedulerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduler_type')
  String? get schedulerType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this TaskActivitySupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskActivitySupabaseModelCopyWith<TaskActivitySupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActivitySupabaseModelCopyWith<$Res> {
  factory $TaskActivitySupabaseModelCopyWith(TaskActivitySupabaseModel value,
          $Res Function(TaskActivitySupabaseModel) then) =
      _$TaskActivitySupabaseModelCopyWithImpl<$Res, TaskActivitySupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'ref_type') String refType,
      @JsonKey(name: 'ref_id') String refId,
      @JsonKey(name: 'task_status') String taskStatus,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'variable_tag_ids') List<String> variableTagIds,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'scheduler_id') String? schedulerId,
      @JsonKey(name: 'scheduler_type') String? schedulerType,
      String? description});
}

/// @nodoc
class _$TaskActivitySupabaseModelCopyWithImpl<$Res,
        $Val extends TaskActivitySupabaseModel>
    implements $TaskActivitySupabaseModelCopyWith<$Res> {
  _$TaskActivitySupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? refType = null,
    Object? refId = null,
    Object? taskStatus = null,
    Object? userId = null,
    Object? variableTagIds = null,
    Object? updatedAt = freezed,
    Object? schedulerId = freezed,
    Object? schedulerType = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refType: null == refType
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      variableTagIds: null == variableTagIds
          ? _value.variableTagIds
          : variableTagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulerId: freezed == schedulerId
          ? _value.schedulerId
          : schedulerId // ignore: cast_nullable_to_non_nullable
              as String?,
      schedulerType: freezed == schedulerType
          ? _value.schedulerType
          : schedulerType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskActivitySupabaseModelImplCopyWith<$Res>
    implements $TaskActivitySupabaseModelCopyWith<$Res> {
  factory _$$TaskActivitySupabaseModelImplCopyWith(
          _$TaskActivitySupabaseModelImpl value,
          $Res Function(_$TaskActivitySupabaseModelImpl) then) =
      __$$TaskActivitySupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'ref_type') String refType,
      @JsonKey(name: 'ref_id') String refId,
      @JsonKey(name: 'task_status') String taskStatus,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'variable_tag_ids') List<String> variableTagIds,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'scheduler_id') String? schedulerId,
      @JsonKey(name: 'scheduler_type') String? schedulerType,
      String? description});
}

/// @nodoc
class __$$TaskActivitySupabaseModelImplCopyWithImpl<$Res>
    extends _$TaskActivitySupabaseModelCopyWithImpl<$Res,
        _$TaskActivitySupabaseModelImpl>
    implements _$$TaskActivitySupabaseModelImplCopyWith<$Res> {
  __$$TaskActivitySupabaseModelImplCopyWithImpl(
      _$TaskActivitySupabaseModelImpl _value,
      $Res Function(_$TaskActivitySupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? refType = null,
    Object? refId = null,
    Object? taskStatus = null,
    Object? userId = null,
    Object? variableTagIds = null,
    Object? updatedAt = freezed,
    Object? schedulerId = freezed,
    Object? schedulerType = freezed,
    Object? description = freezed,
  }) {
    return _then(_$TaskActivitySupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refType: null == refType
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      variableTagIds: null == variableTagIds
          ? _value._variableTagIds
          : variableTagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schedulerId: freezed == schedulerId
          ? _value.schedulerId
          : schedulerId // ignore: cast_nullable_to_non_nullable
              as String?,
      schedulerType: freezed == schedulerType
          ? _value.schedulerType
          : schedulerType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskActivitySupabaseModelImpl implements _TaskActivitySupabaseModel {
  const _$TaskActivitySupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'ref_type') required this.refType,
      @JsonKey(name: 'ref_id') required this.refId,
      @JsonKey(name: 'task_status') required this.taskStatus,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'variable_tag_ids')
      required final List<String> variableTagIds,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'scheduler_id') this.schedulerId,
      @JsonKey(name: 'scheduler_type') this.schedulerType,
      this.description})
      : _variableTagIds = variableTagIds;

  factory _$TaskActivitySupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskActivitySupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'ref_type')
  final String refType;
  @override
  @JsonKey(name: 'ref_id')
  final String refId;
  @override
  @JsonKey(name: 'task_status')
  final String taskStatus;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  final List<String> _variableTagIds;
  @override
  @JsonKey(name: 'variable_tag_ids')
  List<String> get variableTagIds {
    if (_variableTagIds is EqualUnmodifiableListView) return _variableTagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variableTagIds);
  }

  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'scheduler_id')
  final String? schedulerId;
  @override
  @JsonKey(name: 'scheduler_type')
  final String? schedulerType;
  @override
  final String? description;

  @override
  String toString() {
    return 'TaskActivitySupabaseModel(id: $id, createdAt: $createdAt, refType: $refType, refId: $refId, taskStatus: $taskStatus, userId: $userId, variableTagIds: $variableTagIds, updatedAt: $updatedAt, schedulerId: $schedulerId, schedulerType: $schedulerType, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskActivitySupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.refType, refType) || other.refType == refType) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._variableTagIds, _variableTagIds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.schedulerId, schedulerId) ||
                other.schedulerId == schedulerId) &&
            (identical(other.schedulerType, schedulerType) ||
                other.schedulerType == schedulerType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      refType,
      refId,
      taskStatus,
      userId,
      const DeepCollectionEquality().hash(_variableTagIds),
      updatedAt,
      schedulerId,
      schedulerType,
      description);

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskActivitySupabaseModelImplCopyWith<_$TaskActivitySupabaseModelImpl>
      get copyWith => __$$TaskActivitySupabaseModelImplCopyWithImpl<
          _$TaskActivitySupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskActivitySupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TaskActivitySupabaseModel implements TaskActivitySupabaseModel {
  const factory _TaskActivitySupabaseModel(
      {required final String id,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'ref_type') required final String refType,
      @JsonKey(name: 'ref_id') required final String refId,
      @JsonKey(name: 'task_status') required final String taskStatus,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'variable_tag_ids')
      required final List<String> variableTagIds,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'scheduler_id') final String? schedulerId,
      @JsonKey(name: 'scheduler_type') final String? schedulerType,
      final String? description}) = _$TaskActivitySupabaseModelImpl;

  factory _TaskActivitySupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TaskActivitySupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'ref_type')
  String get refType;
  @override
  @JsonKey(name: 'ref_id')
  String get refId;
  @override
  @JsonKey(name: 'task_status')
  String get taskStatus;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'variable_tag_ids')
  List<String> get variableTagIds;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'scheduler_id')
  String? get schedulerId;
  @override
  @JsonKey(name: 'scheduler_type')
  String? get schedulerType;
  @override
  String? get description;

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskActivitySupabaseModelImplCopyWith<_$TaskActivitySupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
