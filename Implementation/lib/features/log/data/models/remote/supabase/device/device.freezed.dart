// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceSupabaseModel _$DeviceSupabaseModelFromJson(Map<String, dynamic> json) {
  return _DeviceSupbaseModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get os => throw _privateConstructorUsedError;
  @JsonKey(name: 'os_version')
  String get osVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String get appVersion => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'registered_at')
  DateTime get registeredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_active')
  DateTime get lastActive => throw _privateConstructorUsedError;

  /// Serializes this DeviceSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceSupabaseModelCopyWith<DeviceSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSupabaseModelCopyWith<$Res> {
  factory $DeviceSupabaseModelCopyWith(
          DeviceSupabaseModel value, $Res Function(DeviceSupabaseModel) then) =
      _$DeviceSupabaseModelCopyWithImpl<$Res, DeviceSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String os,
      @JsonKey(name: 'os_version') String osVersion,
      @JsonKey(name: 'app_version') String appVersion,
      String manufacturer,
      String model,
      @JsonKey(name: 'registered_at') DateTime registeredAt,
      @JsonKey(name: 'last_active') DateTime lastActive});
}

/// @nodoc
class _$DeviceSupabaseModelCopyWithImpl<$Res, $Val extends DeviceSupabaseModel>
    implements $DeviceSupabaseModelCopyWith<$Res> {
  _$DeviceSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? os = null,
    Object? osVersion = null,
    Object? appVersion = null,
    Object? manufacturer = null,
    Object? model = null,
    Object? registeredAt = null,
    Object? lastActive = null,
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
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceSupbaseModelImplCopyWith<$Res>
    implements $DeviceSupabaseModelCopyWith<$Res> {
  factory _$$DeviceSupbaseModelImplCopyWith(_$DeviceSupbaseModelImpl value,
          $Res Function(_$DeviceSupbaseModelImpl) then) =
      __$$DeviceSupbaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String os,
      @JsonKey(name: 'os_version') String osVersion,
      @JsonKey(name: 'app_version') String appVersion,
      String manufacturer,
      String model,
      @JsonKey(name: 'registered_at') DateTime registeredAt,
      @JsonKey(name: 'last_active') DateTime lastActive});
}

/// @nodoc
class __$$DeviceSupbaseModelImplCopyWithImpl<$Res>
    extends _$DeviceSupabaseModelCopyWithImpl<$Res, _$DeviceSupbaseModelImpl>
    implements _$$DeviceSupbaseModelImplCopyWith<$Res> {
  __$$DeviceSupbaseModelImplCopyWithImpl(_$DeviceSupbaseModelImpl _value,
      $Res Function(_$DeviceSupbaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? os = null,
    Object? osVersion = null,
    Object? appVersion = null,
    Object? manufacturer = null,
    Object? model = null,
    Object? registeredAt = null,
    Object? lastActive = null,
  }) {
    return _then(_$DeviceSupbaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceSupbaseModelImpl implements _DeviceSupbaseModel {
  const _$DeviceSupbaseModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.os,
      @JsonKey(name: 'os_version') required this.osVersion,
      @JsonKey(name: 'app_version') required this.appVersion,
      required this.manufacturer,
      required this.model,
      @JsonKey(name: 'registered_at') required this.registeredAt,
      @JsonKey(name: 'last_active') required this.lastActive});

  factory _$DeviceSupbaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceSupbaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String os;
  @override
  @JsonKey(name: 'os_version')
  final String osVersion;
  @override
  @JsonKey(name: 'app_version')
  final String appVersion;
  @override
  final String manufacturer;
  @override
  final String model;
  @override
  @JsonKey(name: 'registered_at')
  final DateTime registeredAt;
  @override
  @JsonKey(name: 'last_active')
  final DateTime lastActive;

  @override
  String toString() {
    return 'DeviceSupabaseModel(id: $id, userId: $userId, os: $os, osVersion: $osVersion, appVersion: $appVersion, manufacturer: $manufacturer, model: $model, registeredAt: $registeredAt, lastActive: $lastActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceSupbaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, os, osVersion,
      appVersion, manufacturer, model, registeredAt, lastActive);

  /// Create a copy of DeviceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceSupbaseModelImplCopyWith<_$DeviceSupbaseModelImpl> get copyWith =>
      __$$DeviceSupbaseModelImplCopyWithImpl<_$DeviceSupbaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceSupbaseModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceSupbaseModel implements DeviceSupabaseModel {
  const factory _DeviceSupbaseModel(
          {required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          required final String os,
          @JsonKey(name: 'os_version') required final String osVersion,
          @JsonKey(name: 'app_version') required final String appVersion,
          required final String manufacturer,
          required final String model,
          @JsonKey(name: 'registered_at') required final DateTime registeredAt,
          @JsonKey(name: 'last_active') required final DateTime lastActive}) =
      _$DeviceSupbaseModelImpl;

  factory _DeviceSupbaseModel.fromJson(Map<String, dynamic> json) =
      _$DeviceSupbaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get os;
  @override
  @JsonKey(name: 'os_version')
  String get osVersion;
  @override
  @JsonKey(name: 'app_version')
  String get appVersion;
  @override
  String get manufacturer;
  @override
  String get model;
  @override
  @JsonKey(name: 'registered_at')
  DateTime get registeredAt;
  @override
  @JsonKey(name: 'last_active')
  DateTime get lastActive;

  /// Create a copy of DeviceSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceSupbaseModelImplCopyWith<_$DeviceSupbaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
