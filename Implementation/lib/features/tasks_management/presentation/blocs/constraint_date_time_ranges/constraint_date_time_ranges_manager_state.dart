part of 'constraint_date_time_ranges_manager_bloc.dart';

@freezed
class ConstraintDateTimeRangesManagerState with _$ConstraintDateTimeRangesManagerState {
  const factory ConstraintDateTimeRangesManagerState.initial() = _Initial;

  // Loading state
  const factory ConstraintDateTimeRangesManagerState.loading() = _Loading;

  // Success states for TimeRanges
  const factory ConstraintDateTimeRangesManagerState.timeRangesLoaded(List<TimeRangeEntity> timeRanges) =
      _TimeRangesLoaded;
  const factory ConstraintDateTimeRangesManagerState.timeRangesBatchUpdated() = _TimeRangesBatchUpdated;
  const factory ConstraintDateTimeRangesManagerState.timeRangesBatchCreated() = _TimeRangesBatchCreated;
  const factory ConstraintDateTimeRangesManagerState.timeRangesBatchDeleted(List<String> ids) =
      _TimeRangesBatchDeleted;

  // Success states for DateRanges
  const factory ConstraintDateTimeRangesManagerState.dateRangesLoaded(List<DateRangeEntity> dateRanges) =
      _DateRangesLoaded;
  const factory ConstraintDateTimeRangesManagerState.dateRangesBatchUpdated() = _DateRangesBatchUpdated;
  const factory ConstraintDateTimeRangesManagerState.dateRangesBatchCreated() = _DateRangesBatchCreated;
  const factory ConstraintDateTimeRangesManagerState.dateRangesBatchDeleted(List<String> ids) =
      _DateRangesBatchDeleted;

  // Error state
  const factory ConstraintDateTimeRangesManagerState.failure(String message) = _Failure;
}
