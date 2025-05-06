// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedulers_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchedulerManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
    required TResult Function(SchedulersAggregateEntity params)
        createBatchSchedulers,
    required TResult Function(GenerateInstanceParams params)
        generateAndCreateInstances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult? Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult? Function(GenerateInstanceParams params)?
        generateAndCreateInstances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult Function(GenerateInstanceParams params)? generateAndCreateInstances,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchScheduledInstancesByDayEvent value)
        fetchScheduledInstancesByDay,
    required TResult Function(_CreateBatchSchedulersEvent value)
        createBatchSchedulers,
    required TResult Function(_GenerateAndCreateInstances value)
        generateAndCreateInstances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult? Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult? Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulerManagerEventCopyWith<$Res> {
  factory $SchedulerManagerEventCopyWith(SchedulerManagerEvent value,
          $Res Function(SchedulerManagerEvent) then) =
      _$SchedulerManagerEventCopyWithImpl<$Res, SchedulerManagerEvent>;
}

/// @nodoc
class _$SchedulerManagerEventCopyWithImpl<$Res,
        $Val extends SchedulerManagerEvent>
    implements $SchedulerManagerEventCopyWith<$Res> {
  _$SchedulerManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulerManagerEvent
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
    extends _$SchedulerManagerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SchedulerManagerEvent.started()';
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
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
    required TResult Function(SchedulersAggregateEntity params)
        createBatchSchedulers,
    required TResult Function(GenerateInstanceParams params)
        generateAndCreateInstances,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult? Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult? Function(GenerateInstanceParams params)?
        generateAndCreateInstances,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult Function(GenerateInstanceParams params)? generateAndCreateInstances,
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
    required TResult Function(_FetchScheduledInstancesByDayEvent value)
        fetchScheduledInstancesByDay,
    required TResult Function(_CreateBatchSchedulersEvent value)
        createBatchSchedulers,
    required TResult Function(_GenerateAndCreateInstances value)
        generateAndCreateInstances,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult? Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult? Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SchedulerManagerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchScheduledInstancesByDayEventImplCopyWith<$Res> {
  factory _$$FetchScheduledInstancesByDayEventImplCopyWith(
          _$FetchScheduledInstancesByDayEventImpl value,
          $Res Function(_$FetchScheduledInstancesByDayEventImpl) then) =
      __$$FetchScheduledInstancesByDayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$FetchScheduledInstancesByDayEventImplCopyWithImpl<$Res>
    extends _$SchedulerManagerEventCopyWithImpl<$Res,
        _$FetchScheduledInstancesByDayEventImpl>
    implements _$$FetchScheduledInstancesByDayEventImplCopyWith<$Res> {
  __$$FetchScheduledInstancesByDayEventImplCopyWithImpl(
      _$FetchScheduledInstancesByDayEventImpl _value,
      $Res Function(_$FetchScheduledInstancesByDayEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$FetchScheduledInstancesByDayEventImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FetchScheduledInstancesByDayEventImpl
    implements _FetchScheduledInstancesByDayEvent {
  const _$FetchScheduledInstancesByDayEventImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'SchedulerManagerEvent.fetchScheduledInstancesByDay(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchScheduledInstancesByDayEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchScheduledInstancesByDayEventImplCopyWith<
          _$FetchScheduledInstancesByDayEventImpl>
      get copyWith => __$$FetchScheduledInstancesByDayEventImplCopyWithImpl<
          _$FetchScheduledInstancesByDayEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
    required TResult Function(SchedulersAggregateEntity params)
        createBatchSchedulers,
    required TResult Function(GenerateInstanceParams params)
        generateAndCreateInstances,
  }) {
    return fetchScheduledInstancesByDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult? Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult? Function(GenerateInstanceParams params)?
        generateAndCreateInstances,
  }) {
    return fetchScheduledInstancesByDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult Function(GenerateInstanceParams params)? generateAndCreateInstances,
    required TResult orElse(),
  }) {
    if (fetchScheduledInstancesByDay != null) {
      return fetchScheduledInstancesByDay(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchScheduledInstancesByDayEvent value)
        fetchScheduledInstancesByDay,
    required TResult Function(_CreateBatchSchedulersEvent value)
        createBatchSchedulers,
    required TResult Function(_GenerateAndCreateInstances value)
        generateAndCreateInstances,
  }) {
    return fetchScheduledInstancesByDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult? Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult? Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
  }) {
    return fetchScheduledInstancesByDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
    required TResult orElse(),
  }) {
    if (fetchScheduledInstancesByDay != null) {
      return fetchScheduledInstancesByDay(this);
    }
    return orElse();
  }
}

abstract class _FetchScheduledInstancesByDayEvent
    implements SchedulerManagerEvent {
  const factory _FetchScheduledInstancesByDayEvent(final DateTime date) =
      _$FetchScheduledInstancesByDayEventImpl;

  DateTime get date;

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchScheduledInstancesByDayEventImplCopyWith<
          _$FetchScheduledInstancesByDayEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBatchSchedulersEventImplCopyWith<$Res> {
  factory _$$CreateBatchSchedulersEventImplCopyWith(
          _$CreateBatchSchedulersEventImpl value,
          $Res Function(_$CreateBatchSchedulersEventImpl) then) =
      __$$CreateBatchSchedulersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SchedulersAggregateEntity params});
}

/// @nodoc
class __$$CreateBatchSchedulersEventImplCopyWithImpl<$Res>
    extends _$SchedulerManagerEventCopyWithImpl<$Res,
        _$CreateBatchSchedulersEventImpl>
    implements _$$CreateBatchSchedulersEventImplCopyWith<$Res> {
  __$$CreateBatchSchedulersEventImplCopyWithImpl(
      _$CreateBatchSchedulersEventImpl _value,
      $Res Function(_$CreateBatchSchedulersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CreateBatchSchedulersEventImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SchedulersAggregateEntity,
    ));
  }
}

/// @nodoc

class _$CreateBatchSchedulersEventImpl implements _CreateBatchSchedulersEvent {
  const _$CreateBatchSchedulersEventImpl(this.params);

  @override
  final SchedulersAggregateEntity params;

  @override
  String toString() {
    return 'SchedulerManagerEvent.createBatchSchedulers(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBatchSchedulersEventImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBatchSchedulersEventImplCopyWith<_$CreateBatchSchedulersEventImpl>
      get copyWith => __$$CreateBatchSchedulersEventImplCopyWithImpl<
          _$CreateBatchSchedulersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
    required TResult Function(SchedulersAggregateEntity params)
        createBatchSchedulers,
    required TResult Function(GenerateInstanceParams params)
        generateAndCreateInstances,
  }) {
    return createBatchSchedulers(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult? Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult? Function(GenerateInstanceParams params)?
        generateAndCreateInstances,
  }) {
    return createBatchSchedulers?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult Function(GenerateInstanceParams params)? generateAndCreateInstances,
    required TResult orElse(),
  }) {
    if (createBatchSchedulers != null) {
      return createBatchSchedulers(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchScheduledInstancesByDayEvent value)
        fetchScheduledInstancesByDay,
    required TResult Function(_CreateBatchSchedulersEvent value)
        createBatchSchedulers,
    required TResult Function(_GenerateAndCreateInstances value)
        generateAndCreateInstances,
  }) {
    return createBatchSchedulers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult? Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult? Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
  }) {
    return createBatchSchedulers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
    required TResult orElse(),
  }) {
    if (createBatchSchedulers != null) {
      return createBatchSchedulers(this);
    }
    return orElse();
  }
}

abstract class _CreateBatchSchedulersEvent implements SchedulerManagerEvent {
  const factory _CreateBatchSchedulersEvent(
          final SchedulersAggregateEntity params) =
      _$CreateBatchSchedulersEventImpl;

  SchedulersAggregateEntity get params;

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBatchSchedulersEventImplCopyWith<_$CreateBatchSchedulersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateAndCreateInstancesImplCopyWith<$Res> {
  factory _$$GenerateAndCreateInstancesImplCopyWith(
          _$GenerateAndCreateInstancesImpl value,
          $Res Function(_$GenerateAndCreateInstancesImpl) then) =
      __$$GenerateAndCreateInstancesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenerateInstanceParams params});
}

/// @nodoc
class __$$GenerateAndCreateInstancesImplCopyWithImpl<$Res>
    extends _$SchedulerManagerEventCopyWithImpl<$Res,
        _$GenerateAndCreateInstancesImpl>
    implements _$$GenerateAndCreateInstancesImplCopyWith<$Res> {
  __$$GenerateAndCreateInstancesImplCopyWithImpl(
      _$GenerateAndCreateInstancesImpl _value,
      $Res Function(_$GenerateAndCreateInstancesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GenerateAndCreateInstancesImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GenerateInstanceParams,
    ));
  }
}

/// @nodoc

class _$GenerateAndCreateInstancesImpl implements _GenerateAndCreateInstances {
  const _$GenerateAndCreateInstancesImpl(this.params);

  @override
  final GenerateInstanceParams params;

  @override
  String toString() {
    return 'SchedulerManagerEvent.generateAndCreateInstances(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateAndCreateInstancesImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateAndCreateInstancesImplCopyWith<_$GenerateAndCreateInstancesImpl>
      get copyWith => __$$GenerateAndCreateInstancesImplCopyWithImpl<
          _$GenerateAndCreateInstancesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
    required TResult Function(SchedulersAggregateEntity params)
        createBatchSchedulers,
    required TResult Function(GenerateInstanceParams params)
        generateAndCreateInstances,
  }) {
    return generateAndCreateInstances(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult? Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult? Function(GenerateInstanceParams params)?
        generateAndCreateInstances,
  }) {
    return generateAndCreateInstances?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    TResult Function(SchedulersAggregateEntity params)? createBatchSchedulers,
    TResult Function(GenerateInstanceParams params)? generateAndCreateInstances,
    required TResult orElse(),
  }) {
    if (generateAndCreateInstances != null) {
      return generateAndCreateInstances(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchScheduledInstancesByDayEvent value)
        fetchScheduledInstancesByDay,
    required TResult Function(_CreateBatchSchedulersEvent value)
        createBatchSchedulers,
    required TResult Function(_GenerateAndCreateInstances value)
        generateAndCreateInstances,
  }) {
    return generateAndCreateInstances(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult? Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult? Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
  }) {
    return generateAndCreateInstances?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchScheduledInstancesByDayEvent value)?
        fetchScheduledInstancesByDay,
    TResult Function(_CreateBatchSchedulersEvent value)? createBatchSchedulers,
    TResult Function(_GenerateAndCreateInstances value)?
        generateAndCreateInstances,
    required TResult orElse(),
  }) {
    if (generateAndCreateInstances != null) {
      return generateAndCreateInstances(this);
    }
    return orElse();
  }
}

abstract class _GenerateAndCreateInstances implements SchedulerManagerEvent {
  const factory _GenerateAndCreateInstances(
      final GenerateInstanceParams params) = _$GenerateAndCreateInstancesImpl;

  GenerateInstanceParams get params;

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateAndCreateInstancesImplCopyWith<_$GenerateAndCreateInstancesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchedulerManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<SchedulersAggregateVM> schedulersAggregates)
        schedulersFetched,
    required TResult Function(List<ScheduledInstanceEntity> instances)
        instancesGeneratedAndCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult? Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulActionState value) successfulAction,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_ScheduledInstancesFetchedState value)
        schedulersFetched,
    required TResult Function(_InstancesGeneratedAndCreated value)
        instancesGeneratedAndCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulActionState value)? successfulAction,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult? Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulActionState value)? successfulAction,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulerManagerStateCopyWith<$Res> {
  factory $SchedulerManagerStateCopyWith(SchedulerManagerState value,
          $Res Function(SchedulerManagerState) then) =
      _$SchedulerManagerStateCopyWithImpl<$Res, SchedulerManagerState>;
}

/// @nodoc
class _$SchedulerManagerStateCopyWithImpl<$Res,
        $Val extends SchedulerManagerState>
    implements $SchedulerManagerStateCopyWith<$Res> {
  _$SchedulerManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulerManagerState
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SchedulerManagerState.initial()';
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
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<SchedulersAggregateVM> schedulersAggregates)
        schedulersFetched,
    required TResult Function(List<ScheduledInstanceEntity> instances)
        instancesGeneratedAndCreated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult? Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
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
    required TResult Function(_SuccessfulActionState value) successfulAction,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_ScheduledInstancesFetchedState value)
        schedulersFetched,
    required TResult Function(_InstancesGeneratedAndCreated value)
        instancesGeneratedAndCreated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulActionState value)? successfulAction,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult? Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulActionState value)? successfulAction,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SchedulerManagerState {
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SchedulerManagerState.loading()';
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
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<SchedulersAggregateVM> schedulersAggregates)
        schedulersFetched,
    required TResult Function(List<ScheduledInstanceEntity> instances)
        instancesGeneratedAndCreated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult? Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
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
    required TResult Function(_SuccessfulActionState value) successfulAction,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_ScheduledInstancesFetchedState value)
        schedulersFetched,
    required TResult Function(_InstancesGeneratedAndCreated value)
        instancesGeneratedAndCreated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulActionState value)? successfulAction,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult? Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulActionState value)? successfulAction,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SchedulerManagerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessfulActionStateImplCopyWith<$Res> {
  factory _$$SuccessfulActionStateImplCopyWith(
          _$SuccessfulActionStateImpl value,
          $Res Function(_$SuccessfulActionStateImpl) then) =
      __$$SuccessfulActionStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$SuccessfulActionStateImplCopyWithImpl<$Res>
    extends _$SchedulerManagerStateCopyWithImpl<$Res,
        _$SuccessfulActionStateImpl>
    implements _$$SuccessfulActionStateImplCopyWith<$Res> {
  __$$SuccessfulActionStateImplCopyWithImpl(_$SuccessfulActionStateImpl _value,
      $Res Function(_$SuccessfulActionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$SuccessfulActionStateImpl(
      null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulActionStateImpl implements _SuccessfulActionState {
  const _$SuccessfulActionStateImpl(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'SchedulerManagerState.successfulAction(successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulActionStateImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulActionStateImplCopyWith<_$SuccessfulActionStateImpl>
      get copyWith => __$$SuccessfulActionStateImplCopyWithImpl<
          _$SuccessfulActionStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<SchedulersAggregateVM> schedulersAggregates)
        schedulersFetched,
    required TResult Function(List<ScheduledInstanceEntity> instances)
        instancesGeneratedAndCreated,
  }) {
    return successfulAction(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult? Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
  }) {
    return successfulAction?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (successfulAction != null) {
      return successfulAction(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulActionState value) successfulAction,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_ScheduledInstancesFetchedState value)
        schedulersFetched,
    required TResult Function(_InstancesGeneratedAndCreated value)
        instancesGeneratedAndCreated,
  }) {
    return successfulAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulActionState value)? successfulAction,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult? Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
  }) {
    return successfulAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulActionState value)? successfulAction,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (successfulAction != null) {
      return successfulAction(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulActionState implements SchedulerManagerState {
  const factory _SuccessfulActionState(final String successMessage) =
      _$SuccessfulActionStateImpl;

  String get successMessage;

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessfulActionStateImplCopyWith<_$SuccessfulActionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res, _$FailedActionStateImpl>
    implements _$$FailedActionStateImplCopyWith<$Res> {
  __$$FailedActionStateImplCopyWithImpl(_$FailedActionStateImpl _value,
      $Res Function(_$FailedActionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
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
    return 'SchedulerManagerState.failedAction(errorMessage: $errorMessage)';
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

  /// Create a copy of SchedulerManagerState
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
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<SchedulersAggregateVM> schedulersAggregates)
        schedulersFetched,
    required TResult Function(List<ScheduledInstanceEntity> instances)
        instancesGeneratedAndCreated,
  }) {
    return failedAction(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult? Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
  }) {
    return failedAction?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
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
    required TResult Function(_SuccessfulActionState value) successfulAction,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_ScheduledInstancesFetchedState value)
        schedulersFetched,
    required TResult Function(_InstancesGeneratedAndCreated value)
        instancesGeneratedAndCreated,
  }) {
    return failedAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulActionState value)? successfulAction,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult? Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
  }) {
    return failedAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulActionState value)? successfulAction,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (failedAction != null) {
      return failedAction(this);
    }
    return orElse();
  }
}

abstract class _FailedActionState implements SchedulerManagerState {
  const factory _FailedActionState(final String errorMessage) =
      _$FailedActionStateImpl;

  String get errorMessage;

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedActionStateImplCopyWith<_$FailedActionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduledInstancesFetchedStateImplCopyWith<$Res> {
  factory _$$ScheduledInstancesFetchedStateImplCopyWith(
          _$ScheduledInstancesFetchedStateImpl value,
          $Res Function(_$ScheduledInstancesFetchedStateImpl) then) =
      __$$ScheduledInstancesFetchedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SchedulersAggregateVM> schedulersAggregates});
}

/// @nodoc
class __$$ScheduledInstancesFetchedStateImplCopyWithImpl<$Res>
    extends _$SchedulerManagerStateCopyWithImpl<$Res,
        _$ScheduledInstancesFetchedStateImpl>
    implements _$$ScheduledInstancesFetchedStateImplCopyWith<$Res> {
  __$$ScheduledInstancesFetchedStateImplCopyWithImpl(
      _$ScheduledInstancesFetchedStateImpl _value,
      $Res Function(_$ScheduledInstancesFetchedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulersAggregates = null,
  }) {
    return _then(_$ScheduledInstancesFetchedStateImpl(
      null == schedulersAggregates
          ? _value._schedulersAggregates
          : schedulersAggregates // ignore: cast_nullable_to_non_nullable
              as List<SchedulersAggregateVM>,
    ));
  }
}

/// @nodoc

class _$ScheduledInstancesFetchedStateImpl
    implements _ScheduledInstancesFetchedState {
  const _$ScheduledInstancesFetchedStateImpl(
      final List<SchedulersAggregateVM> schedulersAggregates)
      : _schedulersAggregates = schedulersAggregates;

  final List<SchedulersAggregateVM> _schedulersAggregates;
  @override
  List<SchedulersAggregateVM> get schedulersAggregates {
    if (_schedulersAggregates is EqualUnmodifiableListView)
      return _schedulersAggregates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedulersAggregates);
  }

  @override
  String toString() {
    return 'SchedulerManagerState.schedulersFetched(schedulersAggregates: $schedulersAggregates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledInstancesFetchedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._schedulersAggregates, _schedulersAggregates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_schedulersAggregates));

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledInstancesFetchedStateImplCopyWith<
          _$ScheduledInstancesFetchedStateImpl>
      get copyWith => __$$ScheduledInstancesFetchedStateImplCopyWithImpl<
          _$ScheduledInstancesFetchedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<SchedulersAggregateVM> schedulersAggregates)
        schedulersFetched,
    required TResult Function(List<ScheduledInstanceEntity> instances)
        instancesGeneratedAndCreated,
  }) {
    return schedulersFetched(schedulersAggregates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult? Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
  }) {
    return schedulersFetched?.call(schedulersAggregates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (schedulersFetched != null) {
      return schedulersFetched(schedulersAggregates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulActionState value) successfulAction,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_ScheduledInstancesFetchedState value)
        schedulersFetched,
    required TResult Function(_InstancesGeneratedAndCreated value)
        instancesGeneratedAndCreated,
  }) {
    return schedulersFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulActionState value)? successfulAction,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult? Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
  }) {
    return schedulersFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulActionState value)? successfulAction,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (schedulersFetched != null) {
      return schedulersFetched(this);
    }
    return orElse();
  }
}

abstract class _ScheduledInstancesFetchedState
    implements SchedulerManagerState {
  const factory _ScheduledInstancesFetchedState(
          final List<SchedulersAggregateVM> schedulersAggregates) =
      _$ScheduledInstancesFetchedStateImpl;

  List<SchedulersAggregateVM> get schedulersAggregates;

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledInstancesFetchedStateImplCopyWith<
          _$ScheduledInstancesFetchedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InstancesGeneratedAndCreatedImplCopyWith<$Res> {
  factory _$$InstancesGeneratedAndCreatedImplCopyWith(
          _$InstancesGeneratedAndCreatedImpl value,
          $Res Function(_$InstancesGeneratedAndCreatedImpl) then) =
      __$$InstancesGeneratedAndCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledInstanceEntity> instances});
}

/// @nodoc
class __$$InstancesGeneratedAndCreatedImplCopyWithImpl<$Res>
    extends _$SchedulerManagerStateCopyWithImpl<$Res,
        _$InstancesGeneratedAndCreatedImpl>
    implements _$$InstancesGeneratedAndCreatedImplCopyWith<$Res> {
  __$$InstancesGeneratedAndCreatedImplCopyWithImpl(
      _$InstancesGeneratedAndCreatedImpl _value,
      $Res Function(_$InstancesGeneratedAndCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instances = null,
  }) {
    return _then(_$InstancesGeneratedAndCreatedImpl(
      null == instances
          ? _value._instances
          : instances // ignore: cast_nullable_to_non_nullable
              as List<ScheduledInstanceEntity>,
    ));
  }
}

/// @nodoc

class _$InstancesGeneratedAndCreatedImpl
    implements _InstancesGeneratedAndCreated {
  const _$InstancesGeneratedAndCreatedImpl(
      final List<ScheduledInstanceEntity> instances)
      : _instances = instances;

  final List<ScheduledInstanceEntity> _instances;
  @override
  List<ScheduledInstanceEntity> get instances {
    if (_instances is EqualUnmodifiableListView) return _instances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instances);
  }

  @override
  String toString() {
    return 'SchedulerManagerState.instancesGeneratedAndCreated(instances: $instances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstancesGeneratedAndCreatedImpl &&
            const DeepCollectionEquality()
                .equals(other._instances, _instances));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_instances));

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstancesGeneratedAndCreatedImplCopyWith<
          _$InstancesGeneratedAndCreatedImpl>
      get copyWith => __$$InstancesGeneratedAndCreatedImplCopyWithImpl<
          _$InstancesGeneratedAndCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<SchedulersAggregateVM> schedulersAggregates)
        schedulersFetched,
    required TResult Function(List<ScheduledInstanceEntity> instances)
        instancesGeneratedAndCreated,
  }) {
    return instancesGeneratedAndCreated(instances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult? Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
  }) {
    return instancesGeneratedAndCreated?.call(instances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<SchedulersAggregateVM> schedulersAggregates)?
        schedulersFetched,
    TResult Function(List<ScheduledInstanceEntity> instances)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (instancesGeneratedAndCreated != null) {
      return instancesGeneratedAndCreated(instances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulActionState value) successfulAction,
    required TResult Function(_FailedActionState value) failedAction,
    required TResult Function(_ScheduledInstancesFetchedState value)
        schedulersFetched,
    required TResult Function(_InstancesGeneratedAndCreated value)
        instancesGeneratedAndCreated,
  }) {
    return instancesGeneratedAndCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulActionState value)? successfulAction,
    TResult? Function(_FailedActionState value)? failedAction,
    TResult? Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult? Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
  }) {
    return instancesGeneratedAndCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulActionState value)? successfulAction,
    TResult Function(_FailedActionState value)? failedAction,
    TResult Function(_ScheduledInstancesFetchedState value)? schedulersFetched,
    TResult Function(_InstancesGeneratedAndCreated value)?
        instancesGeneratedAndCreated,
    required TResult orElse(),
  }) {
    if (instancesGeneratedAndCreated != null) {
      return instancesGeneratedAndCreated(this);
    }
    return orElse();
  }
}

abstract class _InstancesGeneratedAndCreated implements SchedulerManagerState {
  const factory _InstancesGeneratedAndCreated(
          final List<ScheduledInstanceEntity> instances) =
      _$InstancesGeneratedAndCreatedImpl;

  List<ScheduledInstanceEntity> get instances;

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstancesGeneratedAndCreatedImplCopyWith<
          _$InstancesGeneratedAndCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
