// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagSupabaseModel _$TagSupabaseModelFromJson(Map<String, dynamic> json) {
  return _TagSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TagSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_code')
  int get colorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_code')
  int get iconCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TagSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagSupabaseModelCopyWith<TagSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagSupabaseModelCopyWith<$Res> {
  factory $TagSupabaseModelCopyWith(
          TagSupabaseModel value, $Res Function(TagSupabaseModel) then) =
      _$TagSupabaseModelCopyWithImpl<$Res, TagSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'color_code') int colorCode,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'user_id') String userId,
      String? description,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$TagSupabaseModelCopyWithImpl<$Res, $Val extends TagSupabaseModel>
    implements $TagSupabaseModelCopyWith<$Res> {
  _$TagSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? colorCode = null,
    Object? iconCode = null,
    Object? createdAt = null,
    Object? userId = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$TagSupabaseModelImplCopyWith<$Res>
    implements $TagSupabaseModelCopyWith<$Res> {
  factory _$$TagSupabaseModelImplCopyWith(_$TagSupabaseModelImpl value,
          $Res Function(_$TagSupabaseModelImpl) then) =
      __$$TagSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'color_code') int colorCode,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'user_id') String userId,
      String? description,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$TagSupabaseModelImplCopyWithImpl<$Res>
    extends _$TagSupabaseModelCopyWithImpl<$Res, _$TagSupabaseModelImpl>
    implements _$$TagSupabaseModelImplCopyWith<$Res> {
  __$$TagSupabaseModelImplCopyWithImpl(_$TagSupabaseModelImpl _value,
      $Res Function(_$TagSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? colorCode = null,
    Object? iconCode = null,
    Object? createdAt = null,
    Object? userId = null,
    Object? description = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TagSupabaseModelImpl(
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$TagSupabaseModelImpl implements _TagSupabaseModel {
  const _$TagSupabaseModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'color_code') required this.colorCode,
      @JsonKey(name: 'icon_code') required this.iconCode,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'user_id') required this.userId,
      this.description,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TagSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagSupabaseModelImplFromJson(json);

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
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String? description;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TagSupabaseModel(id: $id, title: $title, colorCode: $colorCode, iconCode: $iconCode, createdAt: $createdAt, userId: $userId, description: $description, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, colorCode, iconCode,
      createdAt, userId, description, updatedAt);

  /// Create a copy of TagSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagSupabaseModelImplCopyWith<_$TagSupabaseModelImpl> get copyWith =>
      __$$TagSupabaseModelImplCopyWithImpl<_$TagSupabaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TagSupabaseModel implements TagSupabaseModel {
  const factory _TagSupabaseModel(
          {required final String id,
          required final String title,
          @JsonKey(name: 'color_code') required final int colorCode,
          @JsonKey(name: 'icon_code') required final int iconCode,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'user_id') required final String userId,
          final String? description,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$TagSupabaseModelImpl;

  factory _TagSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TagSupabaseModelImpl.fromJson;

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
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String? get description;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of TagSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagSupabaseModelImplCopyWith<_$TagSupabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
