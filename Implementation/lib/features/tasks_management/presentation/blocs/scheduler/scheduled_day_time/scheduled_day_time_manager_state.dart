// lib/features/tasks_management/presentation/bloc/scheduledDayTime_manager_state.dart

part of 'scheduled_day_time_manager_bloc.dart';

@freezed
class ScheduledDayTimesManagerState with _$ScheduledDayTimesManagerState {
  /// Nothing has happened yet.
  const factory ScheduledDayTimesManagerState.initial() = _Initial;

  /// An operation (get / create / update / delete) is in progress.
  const factory ScheduledDayTimesManagerState.loading() = _Loading;

  /// Successfully loaded *all* scheduled days.
  const factory ScheduledDayTimesManagerState.loadedBatch({
    required List<ScheduledDayTimeEntity> scheduledDayTimes,
  }) = _GetedBatch;

  /// Successfully loaded scheduled days by task id.
  const factory ScheduledDayTimesManagerState.loadedByTaskId({
    required List<ScheduledDayTimeEntity> scheduledDayTimes,
  }) = _GetedBatchByTaskId;

  /// One of the batch operations (create/update/delete) succeeded.
  /// You can optionally carry back the modified days or just a message.
  const factory ScheduledDayTimesManagerState.batchOperationSuccess({
    List<ScheduledDayTimeEntity>? days,
    String? message,
  }) = _BatchOperationSuccess;

  /// Something went wrong.
  const factory ScheduledDayTimesManagerState.failure({
    required String error,
  }) = _Failure;

  const factory ScheduledDayTimesManagerState.created(List<ScheduledDayTimeEntity> entities) =
      _Created;
  const factory ScheduledDayTimesManagerState.updated(
      List<ScheduledDayTimeEntity> entities) = _Updated;
  const factory ScheduledDayTimesManagerState.deleted(List<String> ids) = _Deleted;
}
