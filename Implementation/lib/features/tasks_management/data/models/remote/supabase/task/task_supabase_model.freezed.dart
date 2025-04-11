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
  String get colorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_code')
  String get iconCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_categories', includeToJson: false, fromJson: _categories)
  List<String>? get categoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
  List<String>? get tagIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_spent_time')
  Duration? get totalSpentTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_scheduler_id')
  String? get taskSchedulerId => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'color_code') String colorCode,
      @JsonKey(name: 'icon_code') String iconCode,
      @JsonKey(
          name: 'task_categories', includeToJson: false, fromJson: _categories)
      List<String>? categoryIds,
      @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
      List<String>? tagIds,
      @JsonKey(name: 'user_id') String? userId,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      int? priority,
      int? status,
      @JsonKey(name: 'due_date') DateTime? dueDate,
      @JsonKey(name: 'total_spent_time') Duration? totalSpentTime,
      @JsonKey(name: 'task_scheduler_id') String? taskSchedulerId});
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
    Object? categoryIds = freezed,
    Object? tagIds = freezed,
    Object? userId = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? dueDate = freezed,
    Object? totalSpentTime = freezed,
    Object? taskSchedulerId = freezed,
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
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIds: freezed == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalSpentTime: freezed == totalSpentTime
          ? _value.totalSpentTime
          : totalSpentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      taskSchedulerId: freezed == taskSchedulerId
          ? _value.taskSchedulerId
          : taskSchedulerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'color_code') String colorCode,
      @JsonKey(name: 'icon_code') String iconCode,
      @JsonKey(
          name: 'task_categories', includeToJson: false, fromJson: _categories)
      List<String>? categoryIds,
      @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
      List<String>? tagIds,
      @JsonKey(name: 'user_id') String? userId,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      int? priority,
      int? status,
      @JsonKey(name: 'due_date') DateTime? dueDate,
      @JsonKey(name: 'total_spent_time') Duration? totalSpentTime,
      @JsonKey(name: 'task_scheduler_id') String? taskSchedulerId});
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
    Object? categoryIds = freezed,
    Object? tagIds = freezed,
    Object? userId = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? dueDate = freezed,
    Object? totalSpentTime = freezed,
    Object? taskSchedulerId = freezed,
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
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIds: freezed == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalSpentTime: freezed == totalSpentTime
          ? _value.totalSpentTime
          : totalSpentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      taskSchedulerId: freezed == taskSchedulerId
          ? _value.taskSchedulerId
          : taskSchedulerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(
          name: 'task_categories', includeToJson: false, fromJson: _categories)
      required final List<String>? categoryIds,
      @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
      required final List<String>? tagIds,
      @JsonKey(name: 'user_id') this.userId,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.priority,
      this.status,
      @JsonKey(name: 'due_date') this.dueDate,
      @JsonKey(name: 'total_spent_time') this.totalSpentTime,
      @JsonKey(name: 'task_scheduler_id') this.taskSchedulerId})
      : _categoryIds = categoryIds,
        _tagIds = tagIds;

  factory _$TaskSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'color_code')
  final String colorCode;
  @override
  @JsonKey(name: 'icon_code')
  final String iconCode;
  final List<String>? _categoryIds;
  @override
  @JsonKey(name: 'task_categories', includeToJson: false, fromJson: _categories)
  List<String>? get categoryIds {
    final value = _categoryIds;
    if (value == null) return null;
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tagIds;
  @override
  @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final int? priority;
  @override
  final int? status;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;
  @override
  @JsonKey(name: 'total_spent_time')
  final Duration? totalSpentTime;
  @override
  @JsonKey(name: 'task_scheduler_id')
  final String? taskSchedulerId;

  @override
  String toString() {
    return 'TaskSupabaseModel(id: $id, title: $title, colorCode: $colorCode, iconCode: $iconCode, categoryIds: $categoryIds, tagIds: $tagIds, userId: $userId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, priority: $priority, status: $status, dueDate: $dueDate, totalSpentTime: $totalSpentTime, taskSchedulerId: $taskSchedulerId)';
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
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.totalSpentTime, totalSpentTime) ||
                other.totalSpentTime == totalSpentTime) &&
            (identical(other.taskSchedulerId, taskSchedulerId) ||
                other.taskSchedulerId == taskSchedulerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      colorCode,
      iconCode,
      const DeepCollectionEquality().hash(_categoryIds),
      const DeepCollectionEquality().hash(_tagIds),
      userId,
      description,
      createdAt,
      updatedAt,
      priority,
      status,
      dueDate,
      totalSpentTime,
      taskSchedulerId);

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
      @JsonKey(name: 'color_code') required final String colorCode,
      @JsonKey(name: 'icon_code') required final String iconCode,
      @JsonKey(
          name: 'task_categories', includeToJson: false, fromJson: _categories)
      required final List<String>? categoryIds,
      @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
      required final List<String>? tagIds,
      @JsonKey(name: 'user_id') final String? userId,
      final String? description,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final int? priority,
      final int? status,
      @JsonKey(name: 'due_date') final DateTime? dueDate,
      @JsonKey(name: 'total_spent_time') final Duration? totalSpentTime,
      @JsonKey(name: 'task_scheduler_id')
      final String? taskSchedulerId}) = _$TaskSupabaseModelImpl;

  factory _TaskSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TaskSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'color_code')
  String get colorCode;
  @override
  @JsonKey(name: 'icon_code')
  String get iconCode;
  @override
  @JsonKey(name: 'task_categories', includeToJson: false, fromJson: _categories)
  List<String>? get categoryIds;
  @override
  @JsonKey(name: 'task_tags', includeToJson: false, fromJson: _tags)
  List<String>? get tagIds;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  int? get priority;
  @override
  int? get status;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get dueDate;
  @override
  @JsonKey(name: 'total_spent_time')
  Duration? get totalSpentTime;
  @override
  @JsonKey(name: 'task_scheduler_id')
  String? get taskSchedulerId;

  /// Create a copy of TaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskSupabaseModelImplCopyWith<_$TaskSupabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
