// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SyncLogSupabaseModel _$SyncLogSupabaseModelFromJson(Map<String, dynamic> json) {
  return _SyncLogSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$SyncLogSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sync_log_id')
  String get syncLogId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_synced')
  bool? get isSynced => throw _privateConstructorUsedError;
  @JsonKey(name: 'synced_at')
  DateTime? get syncedAt => throw _privateConstructorUsedError;

  /// Serializes this SyncLogSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SyncLogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SyncLogSupabaseModelCopyWith<SyncLogSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncLogSupabaseModelCopyWith<$Res> {
  factory $SyncLogSupabaseModelCopyWith(SyncLogSupabaseModel value,
          $Res Function(SyncLogSupabaseModel) then) =
      _$SyncLogSupabaseModelCopyWithImpl<$Res, SyncLogSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'sync_log_id') String syncLogId,
      @JsonKey(name: 'is_synced') bool? isSynced,
      @JsonKey(name: 'synced_at') DateTime? syncedAt});
}

/// @nodoc
class _$SyncLogSupabaseModelCopyWithImpl<$Res,
        $Val extends SyncLogSupabaseModel>
    implements $SyncLogSupabaseModelCopyWith<$Res> {
  _$SyncLogSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SyncLogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? userId = null,
    Object? syncLogId = null,
    Object? isSynced = freezed,
    Object? syncedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      syncLogId: null == syncLogId
          ? _value.syncLogId
          : syncLogId // ignore: cast_nullable_to_non_nullable
              as String,
      isSynced: freezed == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool?,
      syncedAt: freezed == syncedAt
          ? _value.syncedAt
          : syncedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncLogSupabaseModelImplCopyWith<$Res>
    implements $SyncLogSupabaseModelCopyWith<$Res> {
  factory _$$SyncLogSupabaseModelImplCopyWith(_$SyncLogSupabaseModelImpl value,
          $Res Function(_$SyncLogSupabaseModelImpl) then) =
      __$$SyncLogSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'sync_log_id') String syncLogId,
      @JsonKey(name: 'is_synced') bool? isSynced,
      @JsonKey(name: 'synced_at') DateTime? syncedAt});
}

/// @nodoc
class __$$SyncLogSupabaseModelImplCopyWithImpl<$Res>
    extends _$SyncLogSupabaseModelCopyWithImpl<$Res, _$SyncLogSupabaseModelImpl>
    implements _$$SyncLogSupabaseModelImplCopyWith<$Res> {
  __$$SyncLogSupabaseModelImplCopyWithImpl(_$SyncLogSupabaseModelImpl _value,
      $Res Function(_$SyncLogSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SyncLogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? userId = null,
    Object? syncLogId = null,
    Object? isSynced = freezed,
    Object? syncedAt = freezed,
  }) {
    return _then(_$SyncLogSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      syncLogId: null == syncLogId
          ? _value.syncLogId
          : syncLogId // ignore: cast_nullable_to_non_nullable
              as String,
      isSynced: freezed == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool?,
      syncedAt: freezed == syncedAt
          ? _value.syncedAt
          : syncedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SyncLogSupabaseModelImpl implements _SyncLogSupabaseModel {
  const _$SyncLogSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'sync_log_id') required this.syncLogId,
      @JsonKey(name: 'is_synced') this.isSynced,
      @JsonKey(name: 'synced_at') this.syncedAt});

  factory _$SyncLogSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SyncLogSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'sync_log_id')
  final String syncLogId;
  @override
  @JsonKey(name: 'is_synced')
  final bool? isSynced;
  @override
  @JsonKey(name: 'synced_at')
  final DateTime? syncedAt;

  @override
  String toString() {
    return 'SyncLogSupabaseModel(id: $id, deviceId: $deviceId, userId: $userId, syncLogId: $syncLogId, isSynced: $isSynced, syncedAt: $syncedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncLogSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.syncLogId, syncLogId) ||
                other.syncLogId == syncLogId) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced) &&
            (identical(other.syncedAt, syncedAt) ||
                other.syncedAt == syncedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, deviceId, userId, syncLogId, isSynced, syncedAt);

  /// Create a copy of SyncLogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncLogSupabaseModelImplCopyWith<_$SyncLogSupabaseModelImpl>
      get copyWith =>
          __$$SyncLogSupabaseModelImplCopyWithImpl<_$SyncLogSupabaseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SyncLogSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _SyncLogSupabaseModel implements SyncLogSupabaseModel {
  const factory _SyncLogSupabaseModel(
          {required final String id,
          @JsonKey(name: 'device_id') required final String deviceId,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'sync_log_id') required final String syncLogId,
          @JsonKey(name: 'is_synced') final bool? isSynced,
          @JsonKey(name: 'synced_at') final DateTime? syncedAt}) =
      _$SyncLogSupabaseModelImpl;

  factory _SyncLogSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$SyncLogSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'sync_log_id')
  String get syncLogId;
  @override
  @JsonKey(name: 'is_synced')
  bool? get isSynced;
  @override
  @JsonKey(name: 'synced_at')
  DateTime? get syncedAt;

  /// Create a copy of SyncLogSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SyncLogSupabaseModelImplCopyWith<_$SyncLogSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
