part of 'date_time_ranges_manager_bloc.dart';

@freezed
class DateTimeRangesManagerState with _$DateTimeRangesManagerState {
  const factory DateTimeRangesManagerState.initial() = _Initial;

  // Loading state
  const factory DateTimeRangesManagerState.loading() = _Loading;

  // Success states for TimeRanges
  const factory DateTimeRangesManagerState.timeRangesLoaded(List<TimeRangeEntity> timeRanges) =
      _TimeRangesLoaded;
  const factory DateTimeRangesManagerState.timeRangesBatchUpdated() = _TimeRangesBatchUpdated;
  const factory DateTimeRangesManagerState.timeRangesBatchCreated() = _TimeRangesBatchCreated;
  const factory DateTimeRangesManagerState.timeRangesBatchDeleted(List<String> ids) =
      _TimeRangesBatchDeleted;

  // Success states for DateRanges
  const factory DateTimeRangesManagerState.dateRangesLoaded(List<DateRangeEntity> dateRanges) =
      _DateRangesLoaded;
  const factory DateTimeRangesManagerState.dateRangesBatchUpdated() = _DateRangesBatchUpdated;
  const factory DateTimeRangesManagerState.dateRangesBatchCreated() = _DateRangesBatchCreated;
  const factory DateTimeRangesManagerState.dateRangesBatchDeleted(List<String> ids) =
      _DateRangesBatchDeleted;

  // Error state
  const factory DateTimeRangesManagerState.failure(String message) = _Failure;
}
