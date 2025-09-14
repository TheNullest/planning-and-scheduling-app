// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_constraints_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleConstraintsManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        create,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        update,
    required TResult Function() get,
    required TResult Function(String id) getByTaskId,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult? Function()? get,
    TResult? Function(String id)? getByTaskId,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult Function()? get,
    TResult Function(String id)? getByTaskId,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Get value) get,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Get value)? get,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Get value)? get,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleConstraintsManagerEventCopyWith<$Res> {
  factory $ScheduleConstraintsManagerEventCopyWith(
          ScheduleConstraintsManagerEvent value,
          $Res Function(ScheduleConstraintsManagerEvent) then) =
      _$ScheduleConstraintsManagerEventCopyWithImpl<$Res,
          ScheduleConstraintsManagerEvent>;
}

/// @nodoc
class _$ScheduleConstraintsManagerEventCopyWithImpl<$Res,
        $Val extends ScheduleConstraintsManagerEvent>
    implements $ScheduleConstraintsManagerEventCopyWith<$Res> {
  _$ScheduleConstraintsManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ScheduleConstraintsManagerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        create,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        update,
    required TResult Function() get,
    required TResult Function(String id) getByTaskId,
    required TResult Function(String id) delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult? Function()? get,
    TResult? Function(String id)? getByTaskId,
    TResult? Function(String id)? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult Function()? get,
    TResult Function(String id)? getByTaskId,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Get value) get,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Get value)? get,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Get value)? get,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ScheduleConstraintsManagerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleConstraintsEntity scheduleConstraints});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleConstraints = null,
  }) {
    return _then(_$CreateImpl(
      null == scheduleConstraints
          ? _value.scheduleConstraints
          : scheduleConstraints // ignore: cast_nullable_to_non_nullable
              as ScheduleConstraintsEntity,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.scheduleConstraints);

  @override
  final ScheduleConstraintsEntity scheduleConstraints;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerEvent.create(scheduleConstraints: $scheduleConstraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.scheduleConstraints, scheduleConstraints) ||
                other.scheduleConstraints == scheduleConstraints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleConstraints);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        create,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        update,
    required TResult Function() get,
    required TResult Function(String id) getByTaskId,
    required TResult Function(String id) delete,
  }) {
    return create(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult? Function()? get,
    TResult? Function(String id)? getByTaskId,
    TResult? Function(String id)? delete,
  }) {
    return create?.call(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult Function()? get,
    TResult Function(String id)? getByTaskId,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(scheduleConstraints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Get value) get,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Get value)? get,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Get value)? get,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements ScheduleConstraintsManagerEvent {
  const factory _Create(final ScheduleConstraintsEntity scheduleConstraints) =
      _$CreateImpl;

  ScheduleConstraintsEntity get scheduleConstraints;

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleConstraintsEntity scheduleConstraints});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleConstraints = null,
  }) {
    return _then(_$UpdateImpl(
      null == scheduleConstraints
          ? _value.scheduleConstraints
          : scheduleConstraints // ignore: cast_nullable_to_non_nullable
              as ScheduleConstraintsEntity,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.scheduleConstraints);

  @override
  final ScheduleConstraintsEntity scheduleConstraints;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerEvent.update(scheduleConstraints: $scheduleConstraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.scheduleConstraints, scheduleConstraints) ||
                other.scheduleConstraints == scheduleConstraints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleConstraints);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        create,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        update,
    required TResult Function() get,
    required TResult Function(String id) getByTaskId,
    required TResult Function(String id) delete,
  }) {
    return update(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult? Function()? get,
    TResult? Function(String id)? getByTaskId,
    TResult? Function(String id)? delete,
  }) {
    return update?.call(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult Function()? get,
    TResult Function(String id)? getByTaskId,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(scheduleConstraints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Get value) get,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Get value)? get,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Get value)? get,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ScheduleConstraintsManagerEvent {
  const factory _Update(final ScheduleConstraintsEntity scheduleConstraints) =
      _$UpdateImpl;

  ScheduleConstraintsEntity get scheduleConstraints;

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetImpl implements _Get {
  const _$GetImpl();

  @override
  String toString() {
    return 'ScheduleConstraintsManagerEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        create,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        update,
    required TResult Function() get,
    required TResult Function(String id) getByTaskId,
    required TResult Function(String id) delete,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult? Function()? get,
    TResult? Function(String id)? getByTaskId,
    TResult? Function(String id)? delete,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult Function()? get,
    TResult Function(String id)? getByTaskId,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Get value) get,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_Delete value) delete,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Get value)? get,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_Delete value)? delete,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Get value)? get,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements ScheduleConstraintsManagerEvent {
  const factory _Get() = _$GetImpl;
}

/// @nodoc
abstract class _$$GetByTaskIdImplCopyWith<$Res> {
  factory _$$GetByTaskIdImplCopyWith(
          _$GetByTaskIdImpl value, $Res Function(_$GetByTaskIdImpl) then) =
      __$$GetByTaskIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetByTaskIdImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerEventCopyWithImpl<$Res,
        _$GetByTaskIdImpl> implements _$$GetByTaskIdImplCopyWith<$Res> {
  __$$GetByTaskIdImplCopyWithImpl(
      _$GetByTaskIdImpl _value, $Res Function(_$GetByTaskIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetByTaskIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetByTaskIdImpl implements _GetByTaskId {
  const _$GetByTaskIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerEvent.getByTaskId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByTaskIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByTaskIdImplCopyWith<_$GetByTaskIdImpl> get copyWith =>
      __$$GetByTaskIdImplCopyWithImpl<_$GetByTaskIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        create,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        update,
    required TResult Function() get,
    required TResult Function(String id) getByTaskId,
    required TResult Function(String id) delete,
  }) {
    return getByTaskId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult? Function()? get,
    TResult? Function(String id)? getByTaskId,
    TResult? Function(String id)? delete,
  }) {
    return getByTaskId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult Function()? get,
    TResult Function(String id)? getByTaskId,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getByTaskId != null) {
      return getByTaskId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Get value) get,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_Delete value) delete,
  }) {
    return getByTaskId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Get value)? get,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_Delete value)? delete,
  }) {
    return getByTaskId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Get value)? get,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getByTaskId != null) {
      return getByTaskId(this);
    }
    return orElse();
  }
}

abstract class _GetByTaskId implements ScheduleConstraintsManagerEvent {
  const factory _GetByTaskId(final String id) = _$GetByTaskIdImpl;

  String get id;

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetByTaskIdImplCopyWith<_$GetByTaskIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        create,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        update,
    required TResult Function() get,
    required TResult Function(String id) getByTaskId,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult? Function()? get,
    TResult? Function(String id)? getByTaskId,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? create,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? update,
    TResult Function()? get,
    TResult Function(String id)? getByTaskId,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Get value) get,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Get value)? get,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Get value)? get,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ScheduleConstraintsManagerEvent {
  const factory _Delete(final String id) = _$DeleteImpl;

  String get id;

  /// Create a copy of ScheduleConstraintsManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleConstraintsManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleConstraintsManagerStateCopyWith<$Res> {
  factory $ScheduleConstraintsManagerStateCopyWith(
          ScheduleConstraintsManagerState value,
          $Res Function(ScheduleConstraintsManagerState) then) =
      _$ScheduleConstraintsManagerStateCopyWithImpl<$Res,
          ScheduleConstraintsManagerState>;
}

/// @nodoc
class _$ScheduleConstraintsManagerStateCopyWithImpl<$Res,
        $Val extends ScheduleConstraintsManagerState>
    implements $ScheduleConstraintsManagerStateCopyWith<$Res> {
  _$ScheduleConstraintsManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduleConstraintsManagerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScheduleConstraintsManagerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailedActionStateImplCopyWith<$Res> {
  factory _$$FailedActionStateImplCopyWith(_$FailedActionStateImpl value,
          $Res Function(_$FailedActionStateImpl) then) =
      __$$FailedActionStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedActionStateImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res,
        _$FailedActionStateImpl>
    implements _$$FailedActionStateImplCopyWith<$Res> {
  __$$FailedActionStateImplCopyWithImpl(_$FailedActionStateImpl _value,
      $Res Function(_$FailedActionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedActionStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedActionStateImpl implements _FailedActionState {
  const _$FailedActionStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.failedAction(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedActionStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedActionStateImplCopyWith<_$FailedActionStateImpl> get copyWith =>
      __$$FailedActionStateImplCopyWithImpl<_$FailedActionStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return failedAction(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return failedAction?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (failedAction != null) {
      return failedAction(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return failedAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return failedAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failedAction != null) {
      return failedAction(this);
    }
    return orElse();
  }
}

abstract class _FailedActionState implements ScheduleConstraintsManagerState {
  const factory _FailedActionState(final String errorMessage) =
      _$FailedActionStateImpl;

  String get errorMessage;

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedActionStateImplCopyWith<_$FailedActionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
          _$CreatedImpl value, $Res Function(_$CreatedImpl) then) =
      __$$CreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CreatedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.created(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      __$$CreatedImplCopyWithImpl<_$CreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return created(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return created?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements ScheduleConstraintsManagerState {
  const factory _Created(final String id) = _$CreatedImpl;

  String get id;

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleConstraintsEntity scheduleConstraints});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleConstraints = null,
  }) {
    return _then(_$UpdatedImpl(
      null == scheduleConstraints
          ? _value.scheduleConstraints
          : scheduleConstraints // ignore: cast_nullable_to_non_nullable
              as ScheduleConstraintsEntity,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.scheduleConstraints);

  @override
  final ScheduleConstraintsEntity scheduleConstraints;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.updated(scheduleConstraints: $scheduleConstraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.scheduleConstraints, scheduleConstraints) ||
                other.scheduleConstraints == scheduleConstraints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleConstraints);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return updated(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return updated?.call(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(scheduleConstraints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements ScheduleConstraintsManagerState {
  const factory _Updated(final ScheduleConstraintsEntity scheduleConstraints) =
      _$UpdatedImpl;

  ScheduleConstraintsEntity get scheduleConstraints;

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetedAllImplCopyWith<$Res> {
  factory _$$GetedAllImplCopyWith(
          _$GetedAllImpl value, $Res Function(_$GetedAllImpl) then) =
      __$$GetedAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduleConstraintsEntity> scheduleConstraintsList});
}

/// @nodoc
class __$$GetedAllImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res, _$GetedAllImpl>
    implements _$$GetedAllImplCopyWith<$Res> {
  __$$GetedAllImplCopyWithImpl(
      _$GetedAllImpl _value, $Res Function(_$GetedAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleConstraintsList = null,
  }) {
    return _then(_$GetedAllImpl(
      null == scheduleConstraintsList
          ? _value._scheduleConstraintsList
          : scheduleConstraintsList // ignore: cast_nullable_to_non_nullable
              as List<ScheduleConstraintsEntity>,
    ));
  }
}

/// @nodoc

class _$GetedAllImpl implements _GetedAll {
  const _$GetedAllImpl(
      final List<ScheduleConstraintsEntity> scheduleConstraintsList)
      : _scheduleConstraintsList = scheduleConstraintsList;

  final List<ScheduleConstraintsEntity> _scheduleConstraintsList;
  @override
  List<ScheduleConstraintsEntity> get scheduleConstraintsList {
    if (_scheduleConstraintsList is EqualUnmodifiableListView)
      return _scheduleConstraintsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleConstraintsList);
  }

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.loadedAll(scheduleConstraintsList: $scheduleConstraintsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetedAllImpl &&
            const DeepCollectionEquality().equals(
                other._scheduleConstraintsList, _scheduleConstraintsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_scheduleConstraintsList));

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetedAllImplCopyWith<_$GetedAllImpl> get copyWith =>
      __$$GetedAllImplCopyWithImpl<_$GetedAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return loadedAll(scheduleConstraintsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return loadedAll?.call(scheduleConstraintsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loadedAll != null) {
      return loadedAll(scheduleConstraintsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return loadedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return loadedAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loadedAll != null) {
      return loadedAll(this);
    }
    return orElse();
  }
}

abstract class _GetedAll implements ScheduleConstraintsManagerState {
  const factory _GetedAll(
          final List<ScheduleConstraintsEntity> scheduleConstraintsList) =
      _$GetedAllImpl;

  List<ScheduleConstraintsEntity> get scheduleConstraintsList;

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetedAllImplCopyWith<_$GetedAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetedByTaskIdImplCopyWith<$Res> {
  factory _$$GetedByTaskIdImplCopyWith(
          _$GetedByTaskIdImpl value, $Res Function(_$GetedByTaskIdImpl) then) =
      __$$GetedByTaskIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleConstraintsEntity? scheduleConstraints});
}

/// @nodoc
class __$$GetedByTaskIdImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res,
        _$GetedByTaskIdImpl> implements _$$GetedByTaskIdImplCopyWith<$Res> {
  __$$GetedByTaskIdImplCopyWithImpl(
      _$GetedByTaskIdImpl _value, $Res Function(_$GetedByTaskIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleConstraints = freezed,
  }) {
    return _then(_$GetedByTaskIdImpl(
      freezed == scheduleConstraints
          ? _value.scheduleConstraints
          : scheduleConstraints // ignore: cast_nullable_to_non_nullable
              as ScheduleConstraintsEntity?,
    ));
  }
}

/// @nodoc

class _$GetedByTaskIdImpl implements _GetedByTaskId {
  const _$GetedByTaskIdImpl(this.scheduleConstraints);

  @override
  final ScheduleConstraintsEntity? scheduleConstraints;

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.loadedByTaskId(scheduleConstraints: $scheduleConstraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetedByTaskIdImpl &&
            (identical(other.scheduleConstraints, scheduleConstraints) ||
                other.scheduleConstraints == scheduleConstraints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleConstraints);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetedByTaskIdImplCopyWith<_$GetedByTaskIdImpl> get copyWith =>
      __$$GetedByTaskIdImplCopyWithImpl<_$GetedByTaskIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return loadedByTaskId(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return loadedByTaskId?.call(scheduleConstraints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loadedByTaskId != null) {
      return loadedByTaskId(scheduleConstraints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return loadedByTaskId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return loadedByTaskId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loadedByTaskId != null) {
      return loadedByTaskId(this);
    }
    return orElse();
  }
}

abstract class _GetedByTaskId implements ScheduleConstraintsManagerState {
  const factory _GetedByTaskId(
          final ScheduleConstraintsEntity? scheduleConstraints) =
      _$GetedByTaskIdImpl;

  ScheduleConstraintsEntity? get scheduleConstraints;

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetedByTaskIdImplCopyWith<_$GetedByTaskIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsManagerStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl();

  @override
  String toString() {
    return 'ScheduleConstraintsManagerState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String id) created,
    required TResult Function(ScheduleConstraintsEntity scheduleConstraints)
        updated,
    required TResult Function(
            List<ScheduleConstraintsEntity> scheduleConstraintsList)
        loadedAll,
    required TResult Function(ScheduleConstraintsEntity? scheduleConstraints)
        loadedByTaskId,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String id)? created,
    TResult? Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult? Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult? Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String id)? created,
    TResult Function(ScheduleConstraintsEntity scheduleConstraints)? updated,
    TResult Function(List<ScheduleConstraintsEntity> scheduleConstraintsList)?
        loadedAll,
    TResult Function(ScheduleConstraintsEntity? scheduleConstraints)?
        loadedByTaskId,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_Created value) created,
    required TResult Function(_Updated value) updated,
    required TResult Function(_GetedAll value) loadedAll,
    required TResult Function(_GetedByTaskId value) loadedByTaskId,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_Created value)? created,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_GetedAll value)? loadedAll,
    TResult? Function(_GetedByTaskId value)? loadedByTaskId,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_Created value)? created,
    TResult Function(_Updated value)? updated,
    TResult Function(_GetedAll value)? loadedAll,
    TResult Function(_GetedByTaskId value)? loadedByTaskId,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ScheduleConstraintsManagerState {
  const factory _Deleted() = _$DeletedImpl;
}
