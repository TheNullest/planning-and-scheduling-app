// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSupabaseModel _$UserSupabaseModelFromJson(Map<String, dynamic> json) {
  return _UserSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$UserSupabaseModel {
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_address')
  String? get emailAddress => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  DateTime? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_path')
  String? get avatarPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this UserSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSupabaseModelCopyWith<UserSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSupabaseModelCopyWith<$Res> {
  factory $UserSupabaseModelCopyWith(
          UserSupabaseModel value, $Res Function(UserSupabaseModel) then) =
      _$UserSupabaseModelCopyWithImpl<$Res, UserSupabaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String id,
      @JsonKey(name: 'email_address') String? emailAddress,
      String? password,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'birth_date') DateTime? birthDate,
      @JsonKey(name: 'avatar_path') String? avatarPath,
      @JsonKey(name: 'bio') String? description});
}

/// @nodoc
class _$UserSupabaseModelCopyWithImpl<$Res, $Val extends UserSupabaseModel>
    implements $UserSupabaseModelCopyWith<$Res> {
  _$UserSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
    Object? id = null,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? updatedAt = freezed,
    Object? birthDate = freezed,
    Object? avatarPath = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSupabaseModelImplCopyWith<$Res>
    implements $UserSupabaseModelCopyWith<$Res> {
  factory _$$UserSupabaseModelImplCopyWith(_$UserSupabaseModelImpl value,
          $Res Function(_$UserSupabaseModelImpl) then) =
      __$$UserSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String id,
      @JsonKey(name: 'email_address') String? emailAddress,
      String? password,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'birth_date') DateTime? birthDate,
      @JsonKey(name: 'avatar_path') String? avatarPath,
      @JsonKey(name: 'bio') String? description});
}

/// @nodoc
class __$$UserSupabaseModelImplCopyWithImpl<$Res>
    extends _$UserSupabaseModelCopyWithImpl<$Res, _$UserSupabaseModelImpl>
    implements _$$UserSupabaseModelImplCopyWith<$Res> {
  __$$UserSupabaseModelImplCopyWithImpl(_$UserSupabaseModelImpl _value,
      $Res Function(_$UserSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
    Object? id = null,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? updatedAt = freezed,
    Object? birthDate = freezed,
    Object? avatarPath = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UserSupabaseModelImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
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
class _$UserSupabaseModelImpl implements _UserSupabaseModel {
  const _$UserSupabaseModelImpl(
      {@JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.id,
      @JsonKey(name: 'email_address') this.emailAddress,
      this.password,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'avatar_path') this.avatarPath,
      @JsonKey(name: 'bio') this.description});

  factory _$UserSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSupabaseModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final String id;
  @override
  @JsonKey(name: 'email_address')
  final String? emailAddress;
  @override
  final String? password;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'birth_date')
  final DateTime? birthDate;
  @override
  @JsonKey(name: 'avatar_path')
  final String? avatarPath;
  @override
  @JsonKey(name: 'bio')
  final String? description;

  @override
  String toString() {
    return 'UserSupabaseModel(userName: $userName, firstName: $firstName, lastName: $lastName, createdAt: $createdAt, id: $id, emailAddress: $emailAddress, password: $password, updatedAt: $updatedAt, birthDate: $birthDate, avatarPath: $avatarPath, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSupabaseModelImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      firstName,
      lastName,
      createdAt,
      id,
      emailAddress,
      password,
      updatedAt,
      birthDate,
      avatarPath,
      description);

  /// Create a copy of UserSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSupabaseModelImplCopyWith<_$UserSupabaseModelImpl> get copyWith =>
      __$$UserSupabaseModelImplCopyWithImpl<_$UserSupabaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _UserSupabaseModel implements UserSupabaseModel {
  const factory _UserSupabaseModel(
          {@JsonKey(name: 'user_name') required final String userName,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          required final String id,
          @JsonKey(name: 'email_address') final String? emailAddress,
          final String? password,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'birth_date') final DateTime? birthDate,
          @JsonKey(name: 'avatar_path') final String? avatarPath,
          @JsonKey(name: 'bio') final String? description}) =
      _$UserSupabaseModelImpl;

  factory _UserSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$UserSupabaseModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  String get id;
  @override
  @JsonKey(name: 'email_address')
  String? get emailAddress;
  @override
  String? get password;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'birth_date')
  DateTime? get birthDate;
  @override
  @JsonKey(name: 'avatar_path')
  String? get avatarPath;
  @override
  @JsonKey(name: 'bio')
  String? get description;

  /// Create a copy of UserSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSupabaseModelImplCopyWith<_$UserSupabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
