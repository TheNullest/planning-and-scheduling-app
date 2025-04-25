// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_task_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubTaskSupabaseModel _$SubTaskSupabaseModelFromJson(Map<String, dynamic> json) {
  return _SubTaskSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$SubTaskSupabaseModel {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_spent_time')
  Duration? get totalSpentTime => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this SubTaskSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubTaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubTaskSupabaseModelCopyWith<SubTaskSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubTaskSupabaseModelCopyWith<$Res> {
  factory $SubTaskSupabaseModelCopyWith(SubTaskSupabaseModel value,
          $Res Function(SubTaskSupabaseModel) then) =
      _$SubTaskSupabaseModelCopyWithImpl<$Res, SubTaskSupabaseModel>;
  @useResult
  $Res call(
      {String title,
      String id,
      String priority,
      String status,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_spent_time') Duration? totalSpentTime,
      String? description});
}

/// @nodoc
class _$SubTaskSupabaseModelCopyWithImpl<$Res,
        $Val extends SubTaskSupabaseModel>
    implements $SubTaskSupabaseModelCopyWith<$Res> {
  _$SubTaskSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubTaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? priority = null,
    Object? status = null,
    Object? taskId = null,
    Object? createdAt = null,
    Object? userId = null,
    Object? updatedAt = freezed,
    Object? totalSpentTime = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalSpentTime: freezed == totalSpentTime
          ? _value.totalSpentTime
          : totalSpentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubTaskSupabaseModelImplCopyWith<$Res>
    implements $SubTaskSupabaseModelCopyWith<$Res> {
  factory _$$SubTaskSupabaseModelImplCopyWith(_$SubTaskSupabaseModelImpl value,
          $Res Function(_$SubTaskSupabaseModelImpl) then) =
      __$$SubTaskSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String id,
      String priority,
      String status,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_spent_time') Duration? totalSpentTime,
      String? description});
}

/// @nodoc
class __$$SubTaskSupabaseModelImplCopyWithImpl<$Res>
    extends _$SubTaskSupabaseModelCopyWithImpl<$Res, _$SubTaskSupabaseModelImpl>
    implements _$$SubTaskSupabaseModelImplCopyWith<$Res> {
  __$$SubTaskSupabaseModelImplCopyWithImpl(_$SubTaskSupabaseModelImpl _value,
      $Res Function(_$SubTaskSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubTaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? priority = null,
    Object? status = null,
    Object? taskId = null,
    Object? createdAt = null,
    Object? userId = null,
    Object? updatedAt = freezed,
    Object? totalSpentTime = freezed,
    Object? description = freezed,
  }) {
    return _then(_$SubTaskSupabaseModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalSpentTime: freezed == totalSpentTime
          ? _value.totalSpentTime
          : totalSpentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubTaskSupabaseModelImpl implements _SubTaskSupabaseModel {
  const _$SubTaskSupabaseModelImpl(
      {required this.title,
      required this.id,
      required this.priority,
      required this.status,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'total_spent_time') this.totalSpentTime,
      this.description});

  factory _$SubTaskSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubTaskSupabaseModelImplFromJson(json);

  @override
  final String title;
  @override
  final String id;
  @override
  final String priority;
  @override
  final String status;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'total_spent_time')
  final Duration? totalSpentTime;
  @override
  final String? description;

  @override
  String toString() {
    return 'SubTaskSupabaseModel(title: $title, id: $id, priority: $priority, status: $status, taskId: $taskId, createdAt: $createdAt, userId: $userId, updatedAt: $updatedAt, totalSpentTime: $totalSpentTime, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTaskSupabaseModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.totalSpentTime, totalSpentTime) ||
                other.totalSpentTime == totalSpentTime) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, id, priority, status,
      taskId, createdAt, userId, updatedAt, totalSpentTime, description);

  /// Create a copy of SubTaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTaskSupabaseModelImplCopyWith<_$SubTaskSupabaseModelImpl>
      get copyWith =>
          __$$SubTaskSupabaseModelImplCopyWithImpl<_$SubTaskSupabaseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubTaskSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _SubTaskSupabaseModel implements SubTaskSupabaseModel {
  const factory _SubTaskSupabaseModel(
      {required final String title,
      required final String id,
      required final String priority,
      required final String status,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'total_spent_time') final Duration? totalSpentTime,
      final String? description}) = _$SubTaskSupabaseModelImpl;

  factory _SubTaskSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$SubTaskSupabaseModelImpl.fromJson;

  @override
  String get title;
  @override
  String get id;
  @override
  String get priority;
  @override
  String get status;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'total_spent_time')
  Duration? get totalSpentTime;
  @override
  String? get description;

  /// Create a copy of SubTaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubTaskSupabaseModelImplCopyWith<_$SubTaskSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
