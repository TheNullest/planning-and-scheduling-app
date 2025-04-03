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
  @JsonKey(name: 'main_task_id')
  String get mainTaskId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'main_task_id') String mainTaskId,
      String title,
      String? id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      int? priority,
      int? status});
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
    Object? mainTaskId = null,
    Object? title = null,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? priority = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      mainTaskId: null == mainTaskId
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: 'main_task_id') String mainTaskId,
      String title,
      String? id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      int? priority,
      int? status});
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
    Object? mainTaskId = null,
    Object? title = null,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? priority = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SubTaskSupabaseModelImpl(
      mainTaskId: null == mainTaskId
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubTaskSupabaseModelImpl implements _SubTaskSupabaseModel {
  const _$SubTaskSupabaseModelImpl(
      {@JsonKey(name: 'main_task_id') required this.mainTaskId,
      required this.title,
      required this.id,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'user_id') this.userId,
      this.priority,
      this.status});

  factory _$SubTaskSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubTaskSupabaseModelImplFromJson(json);

  @override
  @JsonKey(name: 'main_task_id')
  final String mainTaskId;
  @override
  final String title;
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
  final int? priority;
  @override
  final int? status;

  @override
  String toString() {
    return 'SubTaskSupabaseModel(mainTaskId: $mainTaskId, title: $title, id: $id, updatedAt: $updatedAt, description: $description, createdAt: $createdAt, userId: $userId, priority: $priority, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTaskSupabaseModelImpl &&
            (identical(other.mainTaskId, mainTaskId) ||
                other.mainTaskId == mainTaskId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mainTaskId, title, id, updatedAt,
      description, createdAt, userId, priority, status);

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
      {@JsonKey(name: 'main_task_id') required final String mainTaskId,
      required final String title,
      required final String? id,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'user_id') final String? userId,
      final int? priority,
      final int? status}) = _$SubTaskSupabaseModelImpl;

  factory _SubTaskSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$SubTaskSupabaseModelImpl.fromJson;

  @override
  @JsonKey(name: 'main_task_id')
  String get mainTaskId;
  @override
  String get title;
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
  int? get priority;
  @override
  int? get status;

  /// Create a copy of SubTaskSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubTaskSupabaseModelImplCopyWith<_$SubTaskSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
