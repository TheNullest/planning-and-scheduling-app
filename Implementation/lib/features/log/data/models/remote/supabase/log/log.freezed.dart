// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogSupabaseModel _$LogSupabaseModelFromJson(Map<String, dynamic> json) {
  return _LogSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$LogSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_id')
  String get entityId => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'recoreded_at')
  String get recorededAt => throw _privateConstructorUsedError;

  /// Serializes this LogSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogSupabaseModelCopyWith<LogSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogSupabaseModelCopyWith<$Res> {
  factory $LogSupabaseModelCopyWith(
          LogSupabaseModel value, $Res Function(LogSupabaseModel) then) =
      _$LogSupabaseModelCopyWithImpl<$Res, LogSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'entity_id') String entityId,
      String action,
      Map<String, dynamic> data,
      @JsonKey(name: 'recoreded_at') String recorededAt});
}

/// @nodoc
class _$LogSupabaseModelCopyWithImpl<$Res, $Val extends LogSupabaseModel>
    implements $LogSupabaseModelCopyWith<$Res> {
  _$LogSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? deviceId = null,
    Object? entityId = null,
    Object? action = null,
    Object? data = null,
    Object? recorededAt = null,
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
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      recorededAt: null == recorededAt
          ? _value.recorededAt
          : recorededAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogSupabaseModelImplCopyWith<$Res>
    implements $LogSupabaseModelCopyWith<$Res> {
  factory _$$LogSupabaseModelImplCopyWith(_$LogSupabaseModelImpl value,
          $Res Function(_$LogSupabaseModelImpl) then) =
      __$$LogSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'entity_id') String entityId,
      String action,
      Map<String, dynamic> data,
      @JsonKey(name: 'recoreded_at') String recorededAt});
}

/// @nodoc
class __$$LogSupabaseModelImplCopyWithImpl<$Res>
    extends _$LogSupabaseModelCopyWithImpl<$Res, _$LogSupabaseModelImpl>
    implements _$$LogSupabaseModelImplCopyWith<$Res> {
  __$$LogSupabaseModelImplCopyWithImpl(_$LogSupabaseModelImpl _value,
      $Res Function(_$LogSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? deviceId = null,
    Object? entityId = null,
    Object? action = null,
    Object? data = null,
    Object? recorededAt = null,
  }) {
    return _then(_$LogSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      recorededAt: null == recorededAt
          ? _value.recorededAt
          : recorededAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogSupabaseModelImpl implements _LogSupabaseModel {
  const _$LogSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'entity_id') required this.entityId,
      required this.action,
      required final Map<String, dynamic> data,
      @JsonKey(name: 'recoreded_at') required this.recorededAt})
      : _data = data;

  factory _$LogSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  @override
  @JsonKey(name: 'entity_id')
  final String entityId;
  @override
  final String action;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey(name: 'recoreded_at')
  final String recorededAt;

  @override
  String toString() {
    return 'LogSupabaseModel(id: $id, userId: $userId, deviceId: $deviceId, entityId: $entityId, action: $action, data: $data, recorededAt: $recorededAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.recorededAt, recorededAt) ||
                other.recorededAt == recorededAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, deviceId, entityId,
      action, const DeepCollectionEquality().hash(_data), recorededAt);

  /// Create a copy of LogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogSupabaseModelImplCopyWith<_$LogSupabaseModelImpl> get copyWith =>
      __$$LogSupabaseModelImplCopyWithImpl<_$LogSupabaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _LogSupabaseModel implements LogSupabaseModel {
  const factory _LogSupabaseModel(
          {required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'device_id') required final String deviceId,
          @JsonKey(name: 'entity_id') required final String entityId,
          required final String action,
          required final Map<String, dynamic> data,
          @JsonKey(name: 'recoreded_at') required final String recorededAt}) =
      _$LogSupabaseModelImpl;

  factory _LogSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$LogSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(name: 'entity_id')
  String get entityId;
  @override
  String get action;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(name: 'recoreded_at')
  String get recorededAt;

  /// Create a copy of LogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogSupabaseModelImplCopyWith<_$LogSupabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
