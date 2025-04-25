// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskSupabaseModel _$TaskSupabaseModelFromJson(Map<String, dynamic> json) {
  return _TaskSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TaskSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_code')
  int get colorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_code')
  int get iconCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_status')
  String get taskStatus => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<String> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_tags')
  List<String> get fixedTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_spent_time')
  Duration get totalSpentTime => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TaskSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskSupabaseModelCopyWith<TaskSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskSupabaseModelCopyWith<$Res> {
  factory $TaskSupabaseModelCopyWith(
          TaskSupabaseModel value, $Res Function(TaskSupabaseModel) then) =
      _$TaskSupabaseModelCopyWithImpl<$Res, TaskSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'color_code') int colorCode,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'task_status') String taskStatus,
      String priority,
      @JsonKey(name: 'created_at') DateTime createdAt,
      bool archived,
      @JsonKey(name: 'categories') List<String> categories,
      @JsonKey(name: 'fixed_tags') List<String> fixedTags,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'total_spent_time') Duration totalSpentTime,
      String? description,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$TaskSupabaseModelCopyWithImpl<$Res, $Val extends TaskSupabaseModel>
    implements $TaskSupabaseModelCopyWith<$Res> {
  _$TaskSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? colorCode = null,
    Object? iconCode = null,
    Object? taskStatus = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? archived = null,
    Object? categories = null,
    Object? fixedTags = null,
    Object? userId = null,
    Object? totalSpentTime = null,
    Object? description = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as int,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as int,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fixedTags: null == fixedTags
          ? _value.fixedTags
          : fixedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpentTime: null == totalSpentTime
          ? _value.totalSpentTime
          : totalSpentTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskSupabaseModelImplCopyWith<$Res>
    implements $TaskSupabaseModelCopyWith<$Res> {
  factory _$$TaskSupabaseModelImplCopyWith(_$TaskSupabaseModelImpl value,
          $Res Function(_$TaskSupabaseModelImpl) then) =
      __$$TaskSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'color_code') int colorCode,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'task_status') String taskStatus,
      String priority,
      @JsonKey(name: 'created_at') DateTime createdAt,
      bool archived,
      @JsonKey(name: 'categories') List<String> categories,
      @JsonKey(name: 'fixed_tags') List<String> fixedTags,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'total_spent_time') Duration totalSpentTime,
      String? description,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$TaskSupabaseModelImplCopyWithImpl<$Res>
    extends _$TaskSupabaseModelCopyWithImpl<$Res, _$TaskSupabaseModelImpl>
    implements _$$TaskSupabaseModelImplCopyWith<$Res> {
  __$$TaskSupabaseModelImplCopyWithImpl(_$TaskSupabaseModelImpl _value,
      $Res Function(_$TaskSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? colorCode = null,
    Object? iconCode = null,
    Object? taskStatus = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? archived = null,
    Object? categories = null,
    Object? fixedTags = null,
    Object? userId = null,
    Object? totalSpentTime = null,
    Object? description = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TaskSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as int,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as int,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fixedTags: null == fixedTags
          ? _value._fixedTags
          : fixedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpentTime: null == totalSpentTime
          ? _value.totalSpentTime
          : totalSpentTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskSupabaseModelImpl implements _TaskSupabaseModel {
  const _$TaskSupabaseModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'color_code') required this.colorCode,
      @JsonKey(name: 'icon_code') required this.iconCode,
      @JsonKey(name: 'task_status') required this.taskStatus,
      required this.priority,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.archived,
      @JsonKey(name: 'categories') required final List<String> categories,
      @JsonKey(name: 'fixed_tags') required final List<String> fixedTags,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'total_spent_time') required this.totalSpentTime,
      this.description,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _categories = categories,
        _fixedTags = fixedTags;

  factory _$TaskSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'color_code')
  final int colorCode;
  @override
  @JsonKey(name: 'icon_code')
  final int iconCode;
  @override
  @JsonKey(name: 'task_status')
  final String taskStatus;
  @override
  final String priority;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final bool archived;
  final List<String> _categories;
  @override
  @JsonKey(name: 'categories')
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String> _fixedTags;
  @override
  @JsonKey(name: 'fixed_tags')
  List<String> get fixedTags {
    if (_fixedTags is EqualUnmodifiableListView) return _fixedTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fixedTags);
  }

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'total_spent_time')
  final Duration totalSpentTime;
  @override
  final String? description;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TaskSupabaseModel(id: $id, title: $title, colorCode: $colorCode, iconCode: $iconCode, taskStatus: $taskStatus, priority: $priority, createdAt: $createdAt, archived: $archived, categories: $categories, fixedTags: $fixedTags, userId: $userId, totalSpentTime: $totalSpentTime, description: $description, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._fixedTags, _fixedTags) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalSpentTime, totalSpentTime) ||
                other.totalSpentTime == totalSpentTime) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      colorCode,
      iconCode,
      taskStatus,
      priority,
      createdAt,
      archived,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_fixedTags),
      userId,
      totalSpentTime,
      description,
      updatedAt);

  /// Create a copy of TaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSupabaseModelImplCopyWith<_$TaskSupabaseModelImpl> get copyWith =>
      __$$TaskSupabaseModelImplCopyWithImpl<_$TaskSupabaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TaskSupabaseModel implements TaskSupabaseModel {
  const factory _TaskSupabaseModel(
      {required final String id,
      required final String title,
      @JsonKey(name: 'color_code') required final int colorCode,
      @JsonKey(name: 'icon_code') required final int iconCode,
      @JsonKey(name: 'task_status') required final String taskStatus,
      required final String priority,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final bool archived,
      @JsonKey(name: 'categories') required final List<String> categories,
      @JsonKey(name: 'fixed_tags') required final List<String> fixedTags,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'total_spent_time') required final Duration totalSpentTime,
      final String? description,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$TaskSupabaseModelImpl;

  factory _TaskSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TaskSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'color_code')
  int get colorCode;
  @override
  @JsonKey(name: 'icon_code')
  int get iconCode;
  @override
  @JsonKey(name: 'task_status')
  String get taskStatus;
  @override
  String get priority;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  bool get archived;
  @override
  @JsonKey(name: 'categories')
  List<String> get categories;
  @override
  @JsonKey(name: 'fixed_tags')
  List<String> get fixedTags;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'total_spent_time')
  Duration get totalSpentTime;
  @override
  String? get description;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of TaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskSupabaseModelImplCopyWith<_$TaskSupabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
