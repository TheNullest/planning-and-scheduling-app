// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategorySupabaseModel _$CategorySupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _CategorySupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$CategorySupabaseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_code')
  int get colorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_code')
  int get iconCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CategorySupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategorySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategorySupabaseModelCopyWith<CategorySupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySupabaseModelCopyWith<$Res> {
  factory $CategorySupabaseModelCopyWith(CategorySupabaseModel value,
          $Res Function(CategorySupabaseModel) then) =
      _$CategorySupabaseModelCopyWithImpl<$Res, CategorySupabaseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'color_code') int colorCode,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String? description,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CategorySupabaseModelCopyWithImpl<$Res,
        $Val extends CategorySupabaseModel>
    implements $CategorySupabaseModelCopyWith<$Res> {
  _$CategorySupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategorySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? colorCode = null,
    Object? iconCode = null,
    Object? userId = null,
    Object? createdAt = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$CategorySupabaseModelImplCopyWith<$Res>
    implements $CategorySupabaseModelCopyWith<$Res> {
  factory _$$CategorySupabaseModelImplCopyWith(
          _$CategorySupabaseModelImpl value,
          $Res Function(_$CategorySupabaseModelImpl) then) =
      __$$CategorySupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'color_code') int colorCode,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String? description,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$CategorySupabaseModelImplCopyWithImpl<$Res>
    extends _$CategorySupabaseModelCopyWithImpl<$Res,
        _$CategorySupabaseModelImpl>
    implements _$$CategorySupabaseModelImplCopyWith<$Res> {
  __$$CategorySupabaseModelImplCopyWithImpl(_$CategorySupabaseModelImpl _value,
      $Res Function(_$CategorySupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategorySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? colorCode = null,
    Object? iconCode = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CategorySupabaseModelImpl(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$CategorySupabaseModelImpl implements _CategorySupabaseModel {
  const _$CategorySupabaseModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'color_code') required this.colorCode,
      @JsonKey(name: 'icon_code') required this.iconCode,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.description,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$CategorySupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategorySupabaseModelImplFromJson(json);

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
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final String? description;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CategorySupabaseModel(id: $id, title: $title, colorCode: $colorCode, iconCode: $iconCode, userId: $userId, createdAt: $createdAt, description: $description, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, colorCode, iconCode,
      userId, createdAt, description, updatedAt);

  /// Create a copy of CategorySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySupabaseModelImplCopyWith<_$CategorySupabaseModelImpl>
      get copyWith => __$$CategorySupabaseModelImplCopyWithImpl<
          _$CategorySupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategorySupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _CategorySupabaseModel implements CategorySupabaseModel {
  const factory _CategorySupabaseModel(
          {required final String id,
          required final String title,
          @JsonKey(name: 'color_code') required final int colorCode,
          @JsonKey(name: 'icon_code') required final int iconCode,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          final String? description,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$CategorySupabaseModelImpl;

  factory _CategorySupabaseModel.fromJson(Map<String, dynamic> json) =
      _$CategorySupabaseModelImpl.fromJson;

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
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  String? get description;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of CategorySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySupabaseModelImplCopyWith<_$CategorySupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
