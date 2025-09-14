// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_occurrences_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduledOccurrencesManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledOccurrencesManagerEventCopyWith<$Res> {
  factory $ScheduledOccurrencesManagerEventCopyWith(
          ScheduledOccurrencesManagerEvent value,
          $Res Function(ScheduledOccurrencesManagerEvent) then) =
      _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
          ScheduledOccurrencesManagerEvent>;
}

/// @nodoc
class _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        $Val extends ScheduledOccurrencesManagerEvent>
    implements $ScheduledOccurrencesManagerEventCopyWith<$Res> {
  _$ScheduledOccurrencesManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledOccurrencesManagerEvent
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
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.started()';
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
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
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
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ScheduledOccurrencesManagerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetByTaskIdImplCopyWith<$Res> {
  factory _$$GetByTaskIdImplCopyWith(
          _$GetByTaskIdImpl value, $Res Function(_$GetByTaskIdImpl) then) =
      __$$GetByTaskIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$GetByTaskIdImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$GetByTaskIdImpl> implements _$$GetByTaskIdImplCopyWith<$Res> {
  __$$GetByTaskIdImplCopyWithImpl(
      _$GetByTaskIdImpl _value, $Res Function(_$GetByTaskIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$GetByTaskIdImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetByTaskIdImpl implements _GetByTaskId {
  const _$GetByTaskIdImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.getByTaskId(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByTaskIdImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of ScheduledOccurrencesManagerEvent
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
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return getByTaskId(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return getByTaskId?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getByTaskId != null) {
      return getByTaskId(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return getByTaskId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return getByTaskId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getByTaskId != null) {
      return getByTaskId(this);
    }
    return orElse();
  }
}

abstract class _GetByTaskId implements ScheduledOccurrencesManagerEvent {
  const factory _GetByTaskId(final String taskId) = _$GetByTaskIdImpl;

  String get taskId;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetByTaskIdImplCopyWith<_$GetByTaskIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetByDateImplCopyWith<$Res> {
  factory _$$GetByDateImplCopyWith(
          _$GetByDateImpl value, $Res Function(_$GetByDateImpl) then) =
      __$$GetByDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$GetByDateImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$GetByDateImpl> implements _$$GetByDateImplCopyWith<$Res> {
  __$$GetByDateImplCopyWithImpl(
      _$GetByDateImpl _value, $Res Function(_$GetByDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GetByDateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetByDateImpl implements _GetByDate {
  const _$GetByDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.getByDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByDateImplCopyWith<_$GetByDateImpl> get copyWith =>
      __$$GetByDateImplCopyWithImpl<_$GetByDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return getByDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return getByDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getByDate != null) {
      return getByDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return getByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return getByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getByDate != null) {
      return getByDate(this);
    }
    return orElse();
  }
}

abstract class _GetByDate implements ScheduledOccurrencesManagerEvent {
  const factory _GetByDate(final DateTime date) = _$GetByDateImpl;

  DateTime get date;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetByDateImplCopyWith<_$GetByDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBySchedulerIdsImplCopyWith<$Res> {
  factory _$$GetBySchedulerIdsImplCopyWith(_$GetBySchedulerIdsImpl value,
          $Res Function(_$GetBySchedulerIdsImpl) then) =
      __$$GetBySchedulerIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> schedulerIds});
}

/// @nodoc
class __$$GetBySchedulerIdsImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$GetBySchedulerIdsImpl>
    implements _$$GetBySchedulerIdsImplCopyWith<$Res> {
  __$$GetBySchedulerIdsImplCopyWithImpl(_$GetBySchedulerIdsImpl _value,
      $Res Function(_$GetBySchedulerIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulerIds = null,
  }) {
    return _then(_$GetBySchedulerIdsImpl(
      null == schedulerIds
          ? _value._schedulerIds
          : schedulerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetBySchedulerIdsImpl implements _GetBySchedulerIds {
  const _$GetBySchedulerIdsImpl(final List<String> schedulerIds)
      : _schedulerIds = schedulerIds;

  final List<String> _schedulerIds;
  @override
  List<String> get schedulerIds {
    if (_schedulerIds is EqualUnmodifiableListView) return _schedulerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedulerIds);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.getBySchedulerIds(schedulerIds: $schedulerIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBySchedulerIdsImpl &&
            const DeepCollectionEquality()
                .equals(other._schedulerIds, _schedulerIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_schedulerIds));

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBySchedulerIdsImplCopyWith<_$GetBySchedulerIdsImpl> get copyWith =>
      __$$GetBySchedulerIdsImplCopyWithImpl<_$GetBySchedulerIdsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return getBySchedulerIds(schedulerIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return getBySchedulerIds?.call(schedulerIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getBySchedulerIds != null) {
      return getBySchedulerIds(schedulerIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return getBySchedulerIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return getBySchedulerIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getBySchedulerIds != null) {
      return getBySchedulerIds(this);
    }
    return orElse();
  }
}

abstract class _GetBySchedulerIds implements ScheduledOccurrencesManagerEvent {
  const factory _GetBySchedulerIds(final List<String> schedulerIds) =
      _$GetBySchedulerIdsImpl;

  List<String> get schedulerIds;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBySchedulerIdsImplCopyWith<_$GetBySchedulerIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUpcomingByTaskIdImplCopyWith<$Res> {
  factory _$$GetUpcomingByTaskIdImplCopyWith(_$GetUpcomingByTaskIdImpl value,
          $Res Function(_$GetUpcomingByTaskIdImpl) then) =
      __$$GetUpcomingByTaskIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$GetUpcomingByTaskIdImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$GetUpcomingByTaskIdImpl>
    implements _$$GetUpcomingByTaskIdImplCopyWith<$Res> {
  __$$GetUpcomingByTaskIdImplCopyWithImpl(_$GetUpcomingByTaskIdImpl _value,
      $Res Function(_$GetUpcomingByTaskIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$GetUpcomingByTaskIdImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUpcomingByTaskIdImpl implements _GetUpcomingByTaskId {
  const _$GetUpcomingByTaskIdImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.getUpcomingByTaskId(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUpcomingByTaskIdImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUpcomingByTaskIdImplCopyWith<_$GetUpcomingByTaskIdImpl> get copyWith =>
      __$$GetUpcomingByTaskIdImplCopyWithImpl<_$GetUpcomingByTaskIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return getUpcomingByTaskId(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return getUpcomingByTaskId?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getUpcomingByTaskId != null) {
      return getUpcomingByTaskId(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return getUpcomingByTaskId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return getUpcomingByTaskId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (getUpcomingByTaskId != null) {
      return getUpcomingByTaskId(this);
    }
    return orElse();
  }
}

abstract class _GetUpcomingByTaskId
    implements ScheduledOccurrencesManagerEvent {
  const factory _GetUpcomingByTaskId(final String taskId) =
      _$GetUpcomingByTaskIdImpl;

  String get taskId;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUpcomingByTaskIdImplCopyWith<_$GetUpcomingByTaskIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBatchImplCopyWith<$Res> {
  factory _$$CreateBatchImplCopyWith(
          _$CreateBatchImpl value, $Res Function(_$CreateBatchImpl) then) =
      __$$CreateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledOccurrenceEntity> occurrences});
}

/// @nodoc
class __$$CreateBatchImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$CreateBatchImpl> implements _$$CreateBatchImplCopyWith<$Res> {
  __$$CreateBatchImplCopyWithImpl(
      _$CreateBatchImpl _value, $Res Function(_$CreateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurrences = null,
  }) {
    return _then(_$CreateBatchImpl(
      null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<ScheduledOccurrenceEntity>,
    ));
  }
}

/// @nodoc

class _$CreateBatchImpl implements _CreateBatch {
  const _$CreateBatchImpl(final List<ScheduledOccurrenceEntity> occurrences)
      : _occurrences = occurrences;

  final List<ScheduledOccurrenceEntity> _occurrences;
  @override
  List<ScheduledOccurrenceEntity> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.createBatch(occurrences: $occurrences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBatchImpl &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_occurrences));

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBatchImplCopyWith<_$CreateBatchImpl> get copyWith =>
      __$$CreateBatchImplCopyWithImpl<_$CreateBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return createBatch(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return createBatch?.call(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (createBatch != null) {
      return createBatch(occurrences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return createBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return createBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (createBatch != null) {
      return createBatch(this);
    }
    return orElse();
  }
}

abstract class _CreateBatch implements ScheduledOccurrencesManagerEvent {
  const factory _CreateBatch(
      final List<ScheduledOccurrenceEntity> occurrences) = _$CreateBatchImpl;

  List<ScheduledOccurrenceEntity> get occurrences;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBatchImplCopyWith<_$CreateBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBatchImplCopyWith<$Res> {
  factory _$$UpdateBatchImplCopyWith(
          _$UpdateBatchImpl value, $Res Function(_$UpdateBatchImpl) then) =
      __$$UpdateBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledOccurrenceEntity> occurrences});
}

/// @nodoc
class __$$UpdateBatchImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$UpdateBatchImpl> implements _$$UpdateBatchImplCopyWith<$Res> {
  __$$UpdateBatchImplCopyWithImpl(
      _$UpdateBatchImpl _value, $Res Function(_$UpdateBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurrences = null,
  }) {
    return _then(_$UpdateBatchImpl(
      null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<ScheduledOccurrenceEntity>,
    ));
  }
}

/// @nodoc

class _$UpdateBatchImpl implements _UpdateBatch {
  const _$UpdateBatchImpl(final List<ScheduledOccurrenceEntity> occurrences)
      : _occurrences = occurrences;

  final List<ScheduledOccurrenceEntity> _occurrences;
  @override
  List<ScheduledOccurrenceEntity> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.updateBatch(occurrences: $occurrences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBatchImpl &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_occurrences));

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBatchImplCopyWith<_$UpdateBatchImpl> get copyWith =>
      __$$UpdateBatchImplCopyWithImpl<_$UpdateBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return updateBatch(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return updateBatch?.call(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (updateBatch != null) {
      return updateBatch(occurrences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return updateBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return updateBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (updateBatch != null) {
      return updateBatch(this);
    }
    return orElse();
  }
}

abstract class _UpdateBatch implements ScheduledOccurrencesManagerEvent {
  const factory _UpdateBatch(
      final List<ScheduledOccurrenceEntity> occurrences) = _$UpdateBatchImpl;

  List<ScheduledOccurrenceEntity> get occurrences;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBatchImplCopyWith<_$UpdateBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBatchImplCopyWith<$Res> {
  factory _$$DeleteBatchImplCopyWith(
          _$DeleteBatchImpl value, $Res Function(_$DeleteBatchImpl) then) =
      __$$DeleteBatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> occurrenceIds});
}

/// @nodoc
class __$$DeleteBatchImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$DeleteBatchImpl> implements _$$DeleteBatchImplCopyWith<$Res> {
  __$$DeleteBatchImplCopyWithImpl(
      _$DeleteBatchImpl _value, $Res Function(_$DeleteBatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurrenceIds = null,
  }) {
    return _then(_$DeleteBatchImpl(
      null == occurrenceIds
          ? _value._occurrenceIds
          : occurrenceIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeleteBatchImpl implements _DeleteBatch {
  const _$DeleteBatchImpl(final List<String> occurrenceIds)
      : _occurrenceIds = occurrenceIds;

  final List<String> _occurrenceIds;
  @override
  List<String> get occurrenceIds {
    if (_occurrenceIds is EqualUnmodifiableListView) return _occurrenceIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrenceIds);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.deleteBatch(occurrenceIds: $occurrenceIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBatchImpl &&
            const DeepCollectionEquality()
                .equals(other._occurrenceIds, _occurrenceIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_occurrenceIds));

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBatchImplCopyWith<_$DeleteBatchImpl> get copyWith =>
      __$$DeleteBatchImplCopyWithImpl<_$DeleteBatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return deleteBatch(occurrenceIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return deleteBatch?.call(occurrenceIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (deleteBatch != null) {
      return deleteBatch(occurrenceIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return deleteBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return deleteBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (deleteBatch != null) {
      return deleteBatch(this);
    }
    return orElse();
  }
}

abstract class _DeleteBatch implements ScheduledOccurrencesManagerEvent {
  const factory _DeleteBatch(final List<String> occurrenceIds) =
      _$DeleteBatchImpl;

  List<String> get occurrenceIds;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBatchImplCopyWith<_$DeleteBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBySchedulerIdsImplCopyWith<$Res> {
  factory _$$DeleteBySchedulerIdsImplCopyWith(_$DeleteBySchedulerIdsImpl value,
          $Res Function(_$DeleteBySchedulerIdsImpl) then) =
      __$$DeleteBySchedulerIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> schedulerIds});
}

/// @nodoc
class __$$DeleteBySchedulerIdsImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$DeleteBySchedulerIdsImpl>
    implements _$$DeleteBySchedulerIdsImplCopyWith<$Res> {
  __$$DeleteBySchedulerIdsImplCopyWithImpl(_$DeleteBySchedulerIdsImpl _value,
      $Res Function(_$DeleteBySchedulerIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedulerIds = null,
  }) {
    return _then(_$DeleteBySchedulerIdsImpl(
      null == schedulerIds
          ? _value._schedulerIds
          : schedulerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeleteBySchedulerIdsImpl implements _DeleteBySchedulerIds {
  const _$DeleteBySchedulerIdsImpl(final List<String> schedulerIds)
      : _schedulerIds = schedulerIds;

  final List<String> _schedulerIds;
  @override
  List<String> get schedulerIds {
    if (_schedulerIds is EqualUnmodifiableListView) return _schedulerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedulerIds);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.deleteBySchedulerIds(schedulerIds: $schedulerIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBySchedulerIdsImpl &&
            const DeepCollectionEquality()
                .equals(other._schedulerIds, _schedulerIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_schedulerIds));

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBySchedulerIdsImplCopyWith<_$DeleteBySchedulerIdsImpl>
      get copyWith =>
          __$$DeleteBySchedulerIdsImplCopyWithImpl<_$DeleteBySchedulerIdsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return deleteBySchedulerIds(schedulerIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return deleteBySchedulerIds?.call(schedulerIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (deleteBySchedulerIds != null) {
      return deleteBySchedulerIds(schedulerIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return deleteBySchedulerIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return deleteBySchedulerIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (deleteBySchedulerIds != null) {
      return deleteBySchedulerIds(this);
    }
    return orElse();
  }
}

abstract class _DeleteBySchedulerIds
    implements ScheduledOccurrencesManagerEvent {
  const factory _DeleteBySchedulerIds(final List<String> schedulerIds) =
      _$DeleteBySchedulerIdsImpl;

  List<String> get schedulerIds;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBySchedulerIdsImplCopyWith<_$DeleteBySchedulerIdsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteByTaskIdImplCopyWith<$Res> {
  factory _$$DeleteByTaskIdImplCopyWith(_$DeleteByTaskIdImpl value,
          $Res Function(_$DeleteByTaskIdImpl) then) =
      __$$DeleteByTaskIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteByTaskIdImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerEventCopyWithImpl<$Res,
        _$DeleteByTaskIdImpl> implements _$$DeleteByTaskIdImplCopyWith<$Res> {
  __$$DeleteByTaskIdImplCopyWithImpl(
      _$DeleteByTaskIdImpl _value, $Res Function(_$DeleteByTaskIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteByTaskIdImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteByTaskIdImpl implements _DeleteByTaskId {
  const _$DeleteByTaskIdImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerEvent.deleteByTaskId(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteByTaskIdImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteByTaskIdImplCopyWith<_$DeleteByTaskIdImpl> get copyWith =>
      __$$DeleteByTaskIdImplCopyWithImpl<_$DeleteByTaskIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String taskId) getByTaskId,
    required TResult Function(DateTime date) getByDate,
    required TResult Function(List<String> schedulerIds) getBySchedulerIds,
    required TResult Function(String taskId) getUpcomingByTaskId,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        createBatch,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        updateBatch,
    required TResult Function(List<String> occurrenceIds) deleteBatch,
    required TResult Function(List<String> schedulerIds) deleteBySchedulerIds,
    required TResult Function(String taskId) deleteByTaskId,
  }) {
    return deleteByTaskId(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String taskId)? getByTaskId,
    TResult? Function(DateTime date)? getByDate,
    TResult? Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult? Function(String taskId)? getUpcomingByTaskId,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult? Function(List<String> occurrenceIds)? deleteBatch,
    TResult? Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult? Function(String taskId)? deleteByTaskId,
  }) {
    return deleteByTaskId?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String taskId)? getByTaskId,
    TResult Function(DateTime date)? getByDate,
    TResult Function(List<String> schedulerIds)? getBySchedulerIds,
    TResult Function(String taskId)? getUpcomingByTaskId,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? createBatch,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)? updateBatch,
    TResult Function(List<String> occurrenceIds)? deleteBatch,
    TResult Function(List<String> schedulerIds)? deleteBySchedulerIds,
    TResult Function(String taskId)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (deleteByTaskId != null) {
      return deleteByTaskId(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetByTaskId value) getByTaskId,
    required TResult Function(_GetByDate value) getByDate,
    required TResult Function(_GetBySchedulerIds value) getBySchedulerIds,
    required TResult Function(_GetUpcomingByTaskId value) getUpcomingByTaskId,
    required TResult Function(_CreateBatch value) createBatch,
    required TResult Function(_UpdateBatch value) updateBatch,
    required TResult Function(_DeleteBatch value) deleteBatch,
    required TResult Function(_DeleteBySchedulerIds value) deleteBySchedulerIds,
    required TResult Function(_DeleteByTaskId value) deleteByTaskId,
  }) {
    return deleteByTaskId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetByTaskId value)? getByTaskId,
    TResult? Function(_GetByDate value)? getByDate,
    TResult? Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult? Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult? Function(_CreateBatch value)? createBatch,
    TResult? Function(_UpdateBatch value)? updateBatch,
    TResult? Function(_DeleteBatch value)? deleteBatch,
    TResult? Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult? Function(_DeleteByTaskId value)? deleteByTaskId,
  }) {
    return deleteByTaskId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetByTaskId value)? getByTaskId,
    TResult Function(_GetByDate value)? getByDate,
    TResult Function(_GetBySchedulerIds value)? getBySchedulerIds,
    TResult Function(_GetUpcomingByTaskId value)? getUpcomingByTaskId,
    TResult Function(_CreateBatch value)? createBatch,
    TResult Function(_UpdateBatch value)? updateBatch,
    TResult Function(_DeleteBatch value)? deleteBatch,
    TResult Function(_DeleteBySchedulerIds value)? deleteBySchedulerIds,
    TResult Function(_DeleteByTaskId value)? deleteByTaskId,
    required TResult orElse(),
  }) {
    if (deleteByTaskId != null) {
      return deleteByTaskId(this);
    }
    return orElse();
  }
}

abstract class _DeleteByTaskId implements ScheduledOccurrencesManagerEvent {
  const factory _DeleteByTaskId(final String taskId) = _$DeleteByTaskIdImpl;

  String get taskId;

  /// Create a copy of ScheduledOccurrencesManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteByTaskIdImplCopyWith<_$DeleteByTaskIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduledOccurrencesManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledOccurrencesManagerStateCopyWith<$Res> {
  factory $ScheduledOccurrencesManagerStateCopyWith(
          ScheduledOccurrencesManagerState value,
          $Res Function(ScheduledOccurrencesManagerState) then) =
      _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
          ScheduledOccurrencesManagerState>;
}

/// @nodoc
class _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        $Val extends ScheduledOccurrencesManagerState>
    implements $ScheduledOccurrencesManagerStateCopyWith<$Res> {
  _$ScheduledOccurrencesManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledOccurrencesManagerState
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
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.initial()';
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
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
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
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduledOccurrencesManagerState {
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
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loading()';
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
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
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
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScheduledOccurrencesManagerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadByTaskIdSuccessImplCopyWith<$Res> {
  factory _$$LoadByTaskIdSuccessImplCopyWith(_$LoadByTaskIdSuccessImpl value,
          $Res Function(_$LoadByTaskIdSuccessImpl) then) =
      __$$LoadByTaskIdSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledOccurrenceEntity> occurrences});
}

/// @nodoc
class __$$LoadByTaskIdSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadByTaskIdSuccessImpl>
    implements _$$LoadByTaskIdSuccessImplCopyWith<$Res> {
  __$$LoadByTaskIdSuccessImplCopyWithImpl(_$LoadByTaskIdSuccessImpl _value,
      $Res Function(_$LoadByTaskIdSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurrences = null,
  }) {
    return _then(_$LoadByTaskIdSuccessImpl(
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<ScheduledOccurrenceEntity>,
    ));
  }
}

/// @nodoc

class _$LoadByTaskIdSuccessImpl implements _LoadByTaskIdSuccess {
  const _$LoadByTaskIdSuccessImpl(
      {required final List<ScheduledOccurrenceEntity> occurrences})
      : _occurrences = occurrences;

  final List<ScheduledOccurrenceEntity> _occurrences;
  @override
  List<ScheduledOccurrenceEntity> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadByTaskIdSuccess(occurrences: $occurrences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadByTaskIdSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_occurrences));

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadByTaskIdSuccessImplCopyWith<_$LoadByTaskIdSuccessImpl> get copyWith =>
      __$$LoadByTaskIdSuccessImplCopyWithImpl<_$LoadByTaskIdSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadByTaskIdSuccess(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadByTaskIdSuccess?.call(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByTaskIdSuccess != null) {
      return loadByTaskIdSuccess(occurrences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadByTaskIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadByTaskIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByTaskIdSuccess != null) {
      return loadByTaskIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadByTaskIdSuccess
    implements ScheduledOccurrencesManagerState {
  const factory _LoadByTaskIdSuccess(
          {required final List<ScheduledOccurrenceEntity> occurrences}) =
      _$LoadByTaskIdSuccessImpl;

  List<ScheduledOccurrenceEntity> get occurrences;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadByTaskIdSuccessImplCopyWith<_$LoadByTaskIdSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadByDateSuccessImplCopyWith<$Res> {
  factory _$$LoadByDateSuccessImplCopyWith(_$LoadByDateSuccessImpl value,
          $Res Function(_$LoadByDateSuccessImpl) then) =
      __$$LoadByDateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledOccurrenceEntity> occurrences});
}

/// @nodoc
class __$$LoadByDateSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadByDateSuccessImpl>
    implements _$$LoadByDateSuccessImplCopyWith<$Res> {
  __$$LoadByDateSuccessImplCopyWithImpl(_$LoadByDateSuccessImpl _value,
      $Res Function(_$LoadByDateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurrences = null,
  }) {
    return _then(_$LoadByDateSuccessImpl(
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<ScheduledOccurrenceEntity>,
    ));
  }
}

/// @nodoc

class _$LoadByDateSuccessImpl implements _LoadByDateSuccess {
  const _$LoadByDateSuccessImpl(
      {required final List<ScheduledOccurrenceEntity> occurrences})
      : _occurrences = occurrences;

  final List<ScheduledOccurrenceEntity> _occurrences;
  @override
  List<ScheduledOccurrenceEntity> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadByDateSuccess(occurrences: $occurrences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadByDateSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_occurrences));

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadByDateSuccessImplCopyWith<_$LoadByDateSuccessImpl> get copyWith =>
      __$$LoadByDateSuccessImplCopyWithImpl<_$LoadByDateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadByDateSuccess(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadByDateSuccess?.call(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByDateSuccess != null) {
      return loadByDateSuccess(occurrences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadByDateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadByDateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByDateSuccess != null) {
      return loadByDateSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadByDateSuccess implements ScheduledOccurrencesManagerState {
  const factory _LoadByDateSuccess(
          {required final List<ScheduledOccurrenceEntity> occurrences}) =
      _$LoadByDateSuccessImpl;

  List<ScheduledOccurrenceEntity> get occurrences;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadByDateSuccessImplCopyWith<_$LoadByDateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadBySchedulerIdsSuccessImplCopyWith<$Res> {
  factory _$$LoadBySchedulerIdsSuccessImplCopyWith(
          _$LoadBySchedulerIdsSuccessImpl value,
          $Res Function(_$LoadBySchedulerIdsSuccessImpl) then) =
      __$$LoadBySchedulerIdsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledOccurrenceEntity> occurrences});
}

/// @nodoc
class __$$LoadBySchedulerIdsSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadBySchedulerIdsSuccessImpl>
    implements _$$LoadBySchedulerIdsSuccessImplCopyWith<$Res> {
  __$$LoadBySchedulerIdsSuccessImplCopyWithImpl(
      _$LoadBySchedulerIdsSuccessImpl _value,
      $Res Function(_$LoadBySchedulerIdsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurrences = null,
  }) {
    return _then(_$LoadBySchedulerIdsSuccessImpl(
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<ScheduledOccurrenceEntity>,
    ));
  }
}

/// @nodoc

class _$LoadBySchedulerIdsSuccessImpl implements _LoadBySchedulerIdsSuccess {
  const _$LoadBySchedulerIdsSuccessImpl(
      {required final List<ScheduledOccurrenceEntity> occurrences})
      : _occurrences = occurrences;

  final List<ScheduledOccurrenceEntity> _occurrences;
  @override
  List<ScheduledOccurrenceEntity> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadBySchedulerIdsSuccess(occurrences: $occurrences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBySchedulerIdsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_occurrences));

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBySchedulerIdsSuccessImplCopyWith<_$LoadBySchedulerIdsSuccessImpl>
      get copyWith => __$$LoadBySchedulerIdsSuccessImplCopyWithImpl<
          _$LoadBySchedulerIdsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsSuccess(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsSuccess?.call(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadBySchedulerIdsSuccess != null) {
      return loadBySchedulerIdsSuccess(occurrences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadBySchedulerIdsSuccess != null) {
      return loadBySchedulerIdsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadBySchedulerIdsSuccess
    implements ScheduledOccurrencesManagerState {
  const factory _LoadBySchedulerIdsSuccess(
          {required final List<ScheduledOccurrenceEntity> occurrences}) =
      _$LoadBySchedulerIdsSuccessImpl;

  List<ScheduledOccurrenceEntity> get occurrences;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadBySchedulerIdsSuccessImplCopyWith<_$LoadBySchedulerIdsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUpcomingByTaskIdSuccessImplCopyWith<$Res> {
  factory _$$LoadUpcomingByTaskIdSuccessImplCopyWith(
          _$LoadUpcomingByTaskIdSuccessImpl value,
          $Res Function(_$LoadUpcomingByTaskIdSuccessImpl) then) =
      __$$LoadUpcomingByTaskIdSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledOccurrenceEntity> occurrences});
}

/// @nodoc
class __$$LoadUpcomingByTaskIdSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadUpcomingByTaskIdSuccessImpl>
    implements _$$LoadUpcomingByTaskIdSuccessImplCopyWith<$Res> {
  __$$LoadUpcomingByTaskIdSuccessImplCopyWithImpl(
      _$LoadUpcomingByTaskIdSuccessImpl _value,
      $Res Function(_$LoadUpcomingByTaskIdSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurrences = null,
  }) {
    return _then(_$LoadUpcomingByTaskIdSuccessImpl(
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<ScheduledOccurrenceEntity>,
    ));
  }
}

/// @nodoc

class _$LoadUpcomingByTaskIdSuccessImpl
    implements _LoadUpcomingByTaskIdSuccess {
  const _$LoadUpcomingByTaskIdSuccessImpl(
      {required final List<ScheduledOccurrenceEntity> occurrences})
      : _occurrences = occurrences;

  final List<ScheduledOccurrenceEntity> _occurrences;
  @override
  List<ScheduledOccurrenceEntity> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadUpcomingByTaskIdSuccess(occurrences: $occurrences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUpcomingByTaskIdSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_occurrences));

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUpcomingByTaskIdSuccessImplCopyWith<_$LoadUpcomingByTaskIdSuccessImpl>
      get copyWith => __$$LoadUpcomingByTaskIdSuccessImplCopyWithImpl<
          _$LoadUpcomingByTaskIdSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdSuccess(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdSuccess?.call(occurrences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadUpcomingByTaskIdSuccess != null) {
      return loadUpcomingByTaskIdSuccess(occurrences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadUpcomingByTaskIdSuccess != null) {
      return loadUpcomingByTaskIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadUpcomingByTaskIdSuccess
    implements ScheduledOccurrencesManagerState {
  const factory _LoadUpcomingByTaskIdSuccess(
          {required final List<ScheduledOccurrenceEntity> occurrences}) =
      _$LoadUpcomingByTaskIdSuccessImpl;

  List<ScheduledOccurrenceEntity> get occurrences;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadUpcomingByTaskIdSuccessImplCopyWith<_$LoadUpcomingByTaskIdSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadByTaskIdFailureImplCopyWith<$Res> {
  factory _$$LoadByTaskIdFailureImplCopyWith(_$LoadByTaskIdFailureImpl value,
          $Res Function(_$LoadByTaskIdFailureImpl) then) =
      __$$LoadByTaskIdFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoadByTaskIdFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadByTaskIdFailureImpl>
    implements _$$LoadByTaskIdFailureImplCopyWith<$Res> {
  __$$LoadByTaskIdFailureImplCopyWithImpl(_$LoadByTaskIdFailureImpl _value,
      $Res Function(_$LoadByTaskIdFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadByTaskIdFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadByTaskIdFailureImpl implements _LoadByTaskIdFailure {
  const _$LoadByTaskIdFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadByTaskIdFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadByTaskIdFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadByTaskIdFailureImplCopyWith<_$LoadByTaskIdFailureImpl> get copyWith =>
      __$$LoadByTaskIdFailureImplCopyWithImpl<_$LoadByTaskIdFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadByTaskIdFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadByTaskIdFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByTaskIdFailure != null) {
      return loadByTaskIdFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadByTaskIdFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadByTaskIdFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByTaskIdFailure != null) {
      return loadByTaskIdFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadByTaskIdFailure
    implements ScheduledOccurrencesManagerState {
  const factory _LoadByTaskIdFailure({required final String error}) =
      _$LoadByTaskIdFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadByTaskIdFailureImplCopyWith<_$LoadByTaskIdFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadByDateFailureImplCopyWith<$Res> {
  factory _$$LoadByDateFailureImplCopyWith(_$LoadByDateFailureImpl value,
          $Res Function(_$LoadByDateFailureImpl) then) =
      __$$LoadByDateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoadByDateFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadByDateFailureImpl>
    implements _$$LoadByDateFailureImplCopyWith<$Res> {
  __$$LoadByDateFailureImplCopyWithImpl(_$LoadByDateFailureImpl _value,
      $Res Function(_$LoadByDateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadByDateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadByDateFailureImpl implements _LoadByDateFailure {
  const _$LoadByDateFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadByDateFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadByDateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadByDateFailureImplCopyWith<_$LoadByDateFailureImpl> get copyWith =>
      __$$LoadByDateFailureImplCopyWithImpl<_$LoadByDateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadByDateFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadByDateFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByDateFailure != null) {
      return loadByDateFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadByDateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadByDateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadByDateFailure != null) {
      return loadByDateFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadByDateFailure implements ScheduledOccurrencesManagerState {
  const factory _LoadByDateFailure({required final String error}) =
      _$LoadByDateFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadByDateFailureImplCopyWith<_$LoadByDateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadBySchedulerIdsFailureImplCopyWith<$Res> {
  factory _$$LoadBySchedulerIdsFailureImplCopyWith(
          _$LoadBySchedulerIdsFailureImpl value,
          $Res Function(_$LoadBySchedulerIdsFailureImpl) then) =
      __$$LoadBySchedulerIdsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoadBySchedulerIdsFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadBySchedulerIdsFailureImpl>
    implements _$$LoadBySchedulerIdsFailureImplCopyWith<$Res> {
  __$$LoadBySchedulerIdsFailureImplCopyWithImpl(
      _$LoadBySchedulerIdsFailureImpl _value,
      $Res Function(_$LoadBySchedulerIdsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadBySchedulerIdsFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadBySchedulerIdsFailureImpl implements _LoadBySchedulerIdsFailure {
  const _$LoadBySchedulerIdsFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadBySchedulerIdsFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBySchedulerIdsFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBySchedulerIdsFailureImplCopyWith<_$LoadBySchedulerIdsFailureImpl>
      get copyWith => __$$LoadBySchedulerIdsFailureImplCopyWithImpl<
          _$LoadBySchedulerIdsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadBySchedulerIdsFailure != null) {
      return loadBySchedulerIdsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadBySchedulerIdsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadBySchedulerIdsFailure != null) {
      return loadBySchedulerIdsFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadBySchedulerIdsFailure
    implements ScheduledOccurrencesManagerState {
  const factory _LoadBySchedulerIdsFailure({required final String error}) =
      _$LoadBySchedulerIdsFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadBySchedulerIdsFailureImplCopyWith<_$LoadBySchedulerIdsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUpcomingByTaskIdFailureImplCopyWith<$Res> {
  factory _$$LoadUpcomingByTaskIdFailureImplCopyWith(
          _$LoadUpcomingByTaskIdFailureImpl value,
          $Res Function(_$LoadUpcomingByTaskIdFailureImpl) then) =
      __$$LoadUpcomingByTaskIdFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoadUpcomingByTaskIdFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$LoadUpcomingByTaskIdFailureImpl>
    implements _$$LoadUpcomingByTaskIdFailureImplCopyWith<$Res> {
  __$$LoadUpcomingByTaskIdFailureImplCopyWithImpl(
      _$LoadUpcomingByTaskIdFailureImpl _value,
      $Res Function(_$LoadUpcomingByTaskIdFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadUpcomingByTaskIdFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadUpcomingByTaskIdFailureImpl
    implements _LoadUpcomingByTaskIdFailure {
  const _$LoadUpcomingByTaskIdFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.loadUpcomingByTaskIdFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUpcomingByTaskIdFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUpcomingByTaskIdFailureImplCopyWith<_$LoadUpcomingByTaskIdFailureImpl>
      get copyWith => __$$LoadUpcomingByTaskIdFailureImplCopyWithImpl<
          _$LoadUpcomingByTaskIdFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadUpcomingByTaskIdFailure != null) {
      return loadUpcomingByTaskIdFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return loadUpcomingByTaskIdFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (loadUpcomingByTaskIdFailure != null) {
      return loadUpcomingByTaskIdFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadUpcomingByTaskIdFailure
    implements ScheduledOccurrencesManagerState {
  const factory _LoadUpcomingByTaskIdFailure({required final String error}) =
      _$LoadUpcomingByTaskIdFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadUpcomingByTaskIdFailureImplCopyWith<_$LoadUpcomingByTaskIdFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$InProgressImpl> implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements ScheduledOccurrencesManagerState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$CreateBatchSuccessImplCopyWith<$Res> {
  factory _$$CreateBatchSuccessImplCopyWith(_$CreateBatchSuccessImpl value,
          $Res Function(_$CreateBatchSuccessImpl) then) =
      __$$CreateBatchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateBatchSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$CreateBatchSuccessImpl>
    implements _$$CreateBatchSuccessImplCopyWith<$Res> {
  __$$CreateBatchSuccessImplCopyWithImpl(_$CreateBatchSuccessImpl _value,
      $Res Function(_$CreateBatchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateBatchSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateBatchSuccessImpl implements _CreateBatchSuccess {
  const _$CreateBatchSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.createBatchSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBatchSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBatchSuccessImplCopyWith<_$CreateBatchSuccessImpl> get copyWith =>
      __$$CreateBatchSuccessImplCopyWithImpl<_$CreateBatchSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return createBatchSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return createBatchSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (createBatchSuccess != null) {
      return createBatchSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return createBatchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return createBatchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (createBatchSuccess != null) {
      return createBatchSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateBatchSuccess implements ScheduledOccurrencesManagerState {
  const factory _CreateBatchSuccess({required final String message}) =
      _$CreateBatchSuccessImpl;

  String get message;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBatchSuccessImplCopyWith<_$CreateBatchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBatchSuccessImplCopyWith<$Res> {
  factory _$$UpdateBatchSuccessImplCopyWith(_$UpdateBatchSuccessImpl value,
          $Res Function(_$UpdateBatchSuccessImpl) then) =
      __$$UpdateBatchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateBatchSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$UpdateBatchSuccessImpl>
    implements _$$UpdateBatchSuccessImplCopyWith<$Res> {
  __$$UpdateBatchSuccessImplCopyWithImpl(_$UpdateBatchSuccessImpl _value,
      $Res Function(_$UpdateBatchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateBatchSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateBatchSuccessImpl implements _UpdateBatchSuccess {
  const _$UpdateBatchSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.updateBatchSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBatchSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBatchSuccessImplCopyWith<_$UpdateBatchSuccessImpl> get copyWith =>
      __$$UpdateBatchSuccessImplCopyWithImpl<_$UpdateBatchSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return updateBatchSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return updateBatchSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (updateBatchSuccess != null) {
      return updateBatchSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return updateBatchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return updateBatchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (updateBatchSuccess != null) {
      return updateBatchSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateBatchSuccess implements ScheduledOccurrencesManagerState {
  const factory _UpdateBatchSuccess({required final String message}) =
      _$UpdateBatchSuccessImpl;

  String get message;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBatchSuccessImplCopyWith<_$UpdateBatchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBatchSuccessImplCopyWith<$Res> {
  factory _$$DeleteBatchSuccessImplCopyWith(_$DeleteBatchSuccessImpl value,
          $Res Function(_$DeleteBatchSuccessImpl) then) =
      __$$DeleteBatchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$DeleteBatchSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$DeleteBatchSuccessImpl>
    implements _$$DeleteBatchSuccessImplCopyWith<$Res> {
  __$$DeleteBatchSuccessImplCopyWithImpl(_$DeleteBatchSuccessImpl _value,
      $Res Function(_$DeleteBatchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$DeleteBatchSuccessImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeleteBatchSuccessImpl implements _DeleteBatchSuccess {
  const _$DeleteBatchSuccessImpl({required final List<String> ids})
      : _ids = ids;

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.deleteBatchSuccess(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBatchSuccessImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBatchSuccessImplCopyWith<_$DeleteBatchSuccessImpl> get copyWith =>
      __$$DeleteBatchSuccessImplCopyWithImpl<_$DeleteBatchSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return deleteBatchSuccess(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return deleteBatchSuccess?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBatchSuccess != null) {
      return deleteBatchSuccess(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return deleteBatchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return deleteBatchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBatchSuccess != null) {
      return deleteBatchSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteBatchSuccess implements ScheduledOccurrencesManagerState {
  const factory _DeleteBatchSuccess({required final List<String> ids}) =
      _$DeleteBatchSuccessImpl;

  List<String> get ids;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBatchSuccessImplCopyWith<_$DeleteBatchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBySchedulerIdsSuccessImplCopyWith<$Res> {
  factory _$$DeleteBySchedulerIdsSuccessImplCopyWith(
          _$DeleteBySchedulerIdsSuccessImpl value,
          $Res Function(_$DeleteBySchedulerIdsSuccessImpl) then) =
      __$$DeleteBySchedulerIdsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteBySchedulerIdsSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$DeleteBySchedulerIdsSuccessImpl>
    implements _$$DeleteBySchedulerIdsSuccessImplCopyWith<$Res> {
  __$$DeleteBySchedulerIdsSuccessImplCopyWithImpl(
      _$DeleteBySchedulerIdsSuccessImpl _value,
      $Res Function(_$DeleteBySchedulerIdsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteBySchedulerIdsSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBySchedulerIdsSuccessImpl
    implements _DeleteBySchedulerIdsSuccess {
  const _$DeleteBySchedulerIdsSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.deleteBySchedulerIdsSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBySchedulerIdsSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBySchedulerIdsSuccessImplCopyWith<_$DeleteBySchedulerIdsSuccessImpl>
      get copyWith => __$$DeleteBySchedulerIdsSuccessImplCopyWithImpl<
          _$DeleteBySchedulerIdsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBySchedulerIdsSuccess != null) {
      return deleteBySchedulerIdsSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBySchedulerIdsSuccess != null) {
      return deleteBySchedulerIdsSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteBySchedulerIdsSuccess
    implements ScheduledOccurrencesManagerState {
  const factory _DeleteBySchedulerIdsSuccess({required final String message}) =
      _$DeleteBySchedulerIdsSuccessImpl;

  String get message;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBySchedulerIdsSuccessImplCopyWith<_$DeleteBySchedulerIdsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteByTaskIdSuccessImplCopyWith<$Res> {
  factory _$$DeleteByTaskIdSuccessImplCopyWith(
          _$DeleteByTaskIdSuccessImpl value,
          $Res Function(_$DeleteByTaskIdSuccessImpl) then) =
      __$$DeleteByTaskIdSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteByTaskIdSuccessImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$DeleteByTaskIdSuccessImpl>
    implements _$$DeleteByTaskIdSuccessImplCopyWith<$Res> {
  __$$DeleteByTaskIdSuccessImplCopyWithImpl(_$DeleteByTaskIdSuccessImpl _value,
      $Res Function(_$DeleteByTaskIdSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteByTaskIdSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteByTaskIdSuccessImpl implements _DeleteByTaskIdSuccess {
  const _$DeleteByTaskIdSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.deleteByTaskIdSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteByTaskIdSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteByTaskIdSuccessImplCopyWith<_$DeleteByTaskIdSuccessImpl>
      get copyWith => __$$DeleteByTaskIdSuccessImplCopyWithImpl<
          _$DeleteByTaskIdSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteByTaskIdSuccess != null) {
      return deleteByTaskIdSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteByTaskIdSuccess != null) {
      return deleteByTaskIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteByTaskIdSuccess
    implements ScheduledOccurrencesManagerState {
  const factory _DeleteByTaskIdSuccess({required final String message}) =
      _$DeleteByTaskIdSuccessImpl;

  String get message;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteByTaskIdSuccessImplCopyWith<_$DeleteByTaskIdSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBatchFailureImplCopyWith<$Res> {
  factory _$$CreateBatchFailureImplCopyWith(_$CreateBatchFailureImpl value,
          $Res Function(_$CreateBatchFailureImpl) then) =
      __$$CreateBatchFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CreateBatchFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$CreateBatchFailureImpl>
    implements _$$CreateBatchFailureImplCopyWith<$Res> {
  __$$CreateBatchFailureImplCopyWithImpl(_$CreateBatchFailureImpl _value,
      $Res Function(_$CreateBatchFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CreateBatchFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateBatchFailureImpl implements _CreateBatchFailure {
  const _$CreateBatchFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.createBatchFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBatchFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBatchFailureImplCopyWith<_$CreateBatchFailureImpl> get copyWith =>
      __$$CreateBatchFailureImplCopyWithImpl<_$CreateBatchFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return createBatchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return createBatchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (createBatchFailure != null) {
      return createBatchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return createBatchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return createBatchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (createBatchFailure != null) {
      return createBatchFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateBatchFailure implements ScheduledOccurrencesManagerState {
  const factory _CreateBatchFailure({required final String error}) =
      _$CreateBatchFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBatchFailureImplCopyWith<_$CreateBatchFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBatchFailureImplCopyWith<$Res> {
  factory _$$UpdateBatchFailureImplCopyWith(_$UpdateBatchFailureImpl value,
          $Res Function(_$UpdateBatchFailureImpl) then) =
      __$$UpdateBatchFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UpdateBatchFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$UpdateBatchFailureImpl>
    implements _$$UpdateBatchFailureImplCopyWith<$Res> {
  __$$UpdateBatchFailureImplCopyWithImpl(_$UpdateBatchFailureImpl _value,
      $Res Function(_$UpdateBatchFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UpdateBatchFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateBatchFailureImpl implements _UpdateBatchFailure {
  const _$UpdateBatchFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.updateBatchFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBatchFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBatchFailureImplCopyWith<_$UpdateBatchFailureImpl> get copyWith =>
      __$$UpdateBatchFailureImplCopyWithImpl<_$UpdateBatchFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return updateBatchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return updateBatchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (updateBatchFailure != null) {
      return updateBatchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return updateBatchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return updateBatchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (updateBatchFailure != null) {
      return updateBatchFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateBatchFailure implements ScheduledOccurrencesManagerState {
  const factory _UpdateBatchFailure({required final String error}) =
      _$UpdateBatchFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBatchFailureImplCopyWith<_$UpdateBatchFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBatchFailureImplCopyWith<$Res> {
  factory _$$DeleteBatchFailureImplCopyWith(_$DeleteBatchFailureImpl value,
          $Res Function(_$DeleteBatchFailureImpl) then) =
      __$$DeleteBatchFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteBatchFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$DeleteBatchFailureImpl>
    implements _$$DeleteBatchFailureImplCopyWith<$Res> {
  __$$DeleteBatchFailureImplCopyWithImpl(_$DeleteBatchFailureImpl _value,
      $Res Function(_$DeleteBatchFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteBatchFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBatchFailureImpl implements _DeleteBatchFailure {
  const _$DeleteBatchFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.deleteBatchFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBatchFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBatchFailureImplCopyWith<_$DeleteBatchFailureImpl> get copyWith =>
      __$$DeleteBatchFailureImplCopyWithImpl<_$DeleteBatchFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return deleteBatchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return deleteBatchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBatchFailure != null) {
      return deleteBatchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return deleteBatchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return deleteBatchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBatchFailure != null) {
      return deleteBatchFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteBatchFailure implements ScheduledOccurrencesManagerState {
  const factory _DeleteBatchFailure({required final String error}) =
      _$DeleteBatchFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBatchFailureImplCopyWith<_$DeleteBatchFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBySchedulerIdsFailureImplCopyWith<$Res> {
  factory _$$DeleteBySchedulerIdsFailureImplCopyWith(
          _$DeleteBySchedulerIdsFailureImpl value,
          $Res Function(_$DeleteBySchedulerIdsFailureImpl) then) =
      __$$DeleteBySchedulerIdsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteBySchedulerIdsFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$DeleteBySchedulerIdsFailureImpl>
    implements _$$DeleteBySchedulerIdsFailureImplCopyWith<$Res> {
  __$$DeleteBySchedulerIdsFailureImplCopyWithImpl(
      _$DeleteBySchedulerIdsFailureImpl _value,
      $Res Function(_$DeleteBySchedulerIdsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteBySchedulerIdsFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBySchedulerIdsFailureImpl
    implements _DeleteBySchedulerIdsFailure {
  const _$DeleteBySchedulerIdsFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.deleteBySchedulerIdsFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBySchedulerIdsFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBySchedulerIdsFailureImplCopyWith<_$DeleteBySchedulerIdsFailureImpl>
      get copyWith => __$$DeleteBySchedulerIdsFailureImplCopyWithImpl<
          _$DeleteBySchedulerIdsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBySchedulerIdsFailure != null) {
      return deleteBySchedulerIdsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return deleteBySchedulerIdsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteBySchedulerIdsFailure != null) {
      return deleteBySchedulerIdsFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteBySchedulerIdsFailure
    implements ScheduledOccurrencesManagerState {
  const factory _DeleteBySchedulerIdsFailure({required final String error}) =
      _$DeleteBySchedulerIdsFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBySchedulerIdsFailureImplCopyWith<_$DeleteBySchedulerIdsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteByTaskIdFailureImplCopyWith<$Res> {
  factory _$$DeleteByTaskIdFailureImplCopyWith(
          _$DeleteByTaskIdFailureImpl value,
          $Res Function(_$DeleteByTaskIdFailureImpl) then) =
      __$$DeleteByTaskIdFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteByTaskIdFailureImplCopyWithImpl<$Res>
    extends _$ScheduledOccurrencesManagerStateCopyWithImpl<$Res,
        _$DeleteByTaskIdFailureImpl>
    implements _$$DeleteByTaskIdFailureImplCopyWith<$Res> {
  __$$DeleteByTaskIdFailureImplCopyWithImpl(_$DeleteByTaskIdFailureImpl _value,
      $Res Function(_$DeleteByTaskIdFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteByTaskIdFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteByTaskIdFailureImpl implements _DeleteByTaskIdFailure {
  const _$DeleteByTaskIdFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ScheduledOccurrencesManagerState.deleteByTaskIdFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteByTaskIdFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteByTaskIdFailureImplCopyWith<_$DeleteByTaskIdFailureImpl>
      get copyWith => __$$DeleteByTaskIdFailureImplCopyWithImpl<
          _$DeleteByTaskIdFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByTaskIdSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadByDateSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadBySchedulerIdsSuccess,
    required TResult Function(List<ScheduledOccurrenceEntity> occurrences)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(String error) loadByTaskIdFailure,
    required TResult Function(String error) loadByDateFailure,
    required TResult Function(String error) loadBySchedulerIdsFailure,
    required TResult Function(String error) loadUpcomingByTaskIdFailure,
    required TResult Function() inProgress,
    required TResult Function(String message) createBatchSuccess,
    required TResult Function(String message) updateBatchSuccess,
    required TResult Function(List<String> ids) deleteBatchSuccess,
    required TResult Function(String message) deleteBySchedulerIdsSuccess,
    required TResult Function(String message) deleteByTaskIdSuccess,
    required TResult Function(String error) createBatchFailure,
    required TResult Function(String error) updateBatchFailure,
    required TResult Function(String error) deleteBatchFailure,
    required TResult Function(String error) deleteBySchedulerIdsFailure,
    required TResult Function(String error) deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult? Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(String error)? loadByTaskIdFailure,
    TResult? Function(String error)? loadByDateFailure,
    TResult? Function(String error)? loadBySchedulerIdsFailure,
    TResult? Function(String error)? loadUpcomingByTaskIdFailure,
    TResult? Function()? inProgress,
    TResult? Function(String message)? createBatchSuccess,
    TResult? Function(String message)? updateBatchSuccess,
    TResult? Function(List<String> ids)? deleteBatchSuccess,
    TResult? Function(String message)? deleteBySchedulerIdsSuccess,
    TResult? Function(String message)? deleteByTaskIdSuccess,
    TResult? Function(String error)? createBatchFailure,
    TResult? Function(String error)? updateBatchFailure,
    TResult? Function(String error)? deleteBatchFailure,
    TResult? Function(String error)? deleteBySchedulerIdsFailure,
    TResult? Function(String error)? deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByTaskIdSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadByDateSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadBySchedulerIdsSuccess,
    TResult Function(List<ScheduledOccurrenceEntity> occurrences)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(String error)? loadByTaskIdFailure,
    TResult Function(String error)? loadByDateFailure,
    TResult Function(String error)? loadBySchedulerIdsFailure,
    TResult Function(String error)? loadUpcomingByTaskIdFailure,
    TResult Function()? inProgress,
    TResult Function(String message)? createBatchSuccess,
    TResult Function(String message)? updateBatchSuccess,
    TResult Function(List<String> ids)? deleteBatchSuccess,
    TResult Function(String message)? deleteBySchedulerIdsSuccess,
    TResult Function(String message)? deleteByTaskIdSuccess,
    TResult Function(String error)? createBatchFailure,
    TResult Function(String error)? updateBatchFailure,
    TResult Function(String error)? deleteBatchFailure,
    TResult Function(String error)? deleteBySchedulerIdsFailure,
    TResult Function(String error)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteByTaskIdFailure != null) {
      return deleteByTaskIdFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadByTaskIdSuccess value) loadByTaskIdSuccess,
    required TResult Function(_LoadByDateSuccess value) loadByDateSuccess,
    required TResult Function(_LoadBySchedulerIdsSuccess value)
        loadBySchedulerIdsSuccess,
    required TResult Function(_LoadUpcomingByTaskIdSuccess value)
        loadUpcomingByTaskIdSuccess,
    required TResult Function(_LoadByTaskIdFailure value) loadByTaskIdFailure,
    required TResult Function(_LoadByDateFailure value) loadByDateFailure,
    required TResult Function(_LoadBySchedulerIdsFailure value)
        loadBySchedulerIdsFailure,
    required TResult Function(_LoadUpcomingByTaskIdFailure value)
        loadUpcomingByTaskIdFailure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateBatchSuccess value) createBatchSuccess,
    required TResult Function(_UpdateBatchSuccess value) updateBatchSuccess,
    required TResult Function(_DeleteBatchSuccess value) deleteBatchSuccess,
    required TResult Function(_DeleteBySchedulerIdsSuccess value)
        deleteBySchedulerIdsSuccess,
    required TResult Function(_DeleteByTaskIdSuccess value)
        deleteByTaskIdSuccess,
    required TResult Function(_CreateBatchFailure value) createBatchFailure,
    required TResult Function(_UpdateBatchFailure value) updateBatchFailure,
    required TResult Function(_DeleteBatchFailure value) deleteBatchFailure,
    required TResult Function(_DeleteBySchedulerIdsFailure value)
        deleteBySchedulerIdsFailure,
    required TResult Function(_DeleteByTaskIdFailure value)
        deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult? Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult? Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult? Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult? Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult? Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult? Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult? Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult? Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult? Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult? Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult? Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult? Function(_CreateBatchFailure value)? createBatchFailure,
    TResult? Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult? Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult? Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult? Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
  }) {
    return deleteByTaskIdFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadByTaskIdSuccess value)? loadByTaskIdSuccess,
    TResult Function(_LoadByDateSuccess value)? loadByDateSuccess,
    TResult Function(_LoadBySchedulerIdsSuccess value)?
        loadBySchedulerIdsSuccess,
    TResult Function(_LoadUpcomingByTaskIdSuccess value)?
        loadUpcomingByTaskIdSuccess,
    TResult Function(_LoadByTaskIdFailure value)? loadByTaskIdFailure,
    TResult Function(_LoadByDateFailure value)? loadByDateFailure,
    TResult Function(_LoadBySchedulerIdsFailure value)?
        loadBySchedulerIdsFailure,
    TResult Function(_LoadUpcomingByTaskIdFailure value)?
        loadUpcomingByTaskIdFailure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateBatchSuccess value)? createBatchSuccess,
    TResult Function(_UpdateBatchSuccess value)? updateBatchSuccess,
    TResult Function(_DeleteBatchSuccess value)? deleteBatchSuccess,
    TResult Function(_DeleteBySchedulerIdsSuccess value)?
        deleteBySchedulerIdsSuccess,
    TResult Function(_DeleteByTaskIdSuccess value)? deleteByTaskIdSuccess,
    TResult Function(_CreateBatchFailure value)? createBatchFailure,
    TResult Function(_UpdateBatchFailure value)? updateBatchFailure,
    TResult Function(_DeleteBatchFailure value)? deleteBatchFailure,
    TResult Function(_DeleteBySchedulerIdsFailure value)?
        deleteBySchedulerIdsFailure,
    TResult Function(_DeleteByTaskIdFailure value)? deleteByTaskIdFailure,
    required TResult orElse(),
  }) {
    if (deleteByTaskIdFailure != null) {
      return deleteByTaskIdFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteByTaskIdFailure
    implements ScheduledOccurrencesManagerState {
  const factory _DeleteByTaskIdFailure({required final String error}) =
      _$DeleteByTaskIdFailureImpl;

  String get error;

  /// Create a copy of ScheduledOccurrencesManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteByTaskIdFailureImplCopyWith<_$DeleteByTaskIdFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
