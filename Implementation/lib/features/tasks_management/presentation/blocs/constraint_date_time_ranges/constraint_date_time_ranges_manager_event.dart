part of 'constraint_date_time_ranges_manager_bloc.dart';

@freezed
class ConstraintDateTimeRangesManagerEvent with _$ConstraintDateTimeRangesManagerEvent {
  const factory ConstraintDateTimeRangesManagerEvent.started() = _Started;

  // TimeRange Events
  const factory ConstraintDateTimeRangesManagerEvent.createBatchTimeRanges(List<TimeRangeEntity> timeRanges) =
      _CreateBatchTimeRanges;
  const factory ConstraintDateTimeRangesManagerEvent.deleteTimeRanges(List<String> ids) =
      _DeleteBatchTimeRanges;
  const factory ConstraintDateTimeRangesManagerEvent.getTimeRanges() = _GetBatchAllTimeRanges;
  const factory ConstraintDateTimeRangesManagerEvent.getTimeRangesByTaskId(String taskId) =
      _GetBatchTimeRangesByTaskId;
  const factory ConstraintDateTimeRangesManagerEvent.updateTimeRanges(List<TimeRangeEntity> timeRanges) =
      _UpdateTimeRanges;

  // DateRange Events
  const factory ConstraintDateTimeRangesManagerEvent.createBatchDateRanges(List<DateRangeEntity> dateRanges) =
      _CreateBatchDateRanges;
  const factory ConstraintDateTimeRangesManagerEvent.deleteDateRanges(List<String> ids) =
      _DeleteBatchDateRanges;
  const factory ConstraintDateTimeRangesManagerEvent.getDateRanges() = _GetBatchAllDateRanges;

  const factory ConstraintDateTimeRangesManagerEvent.getDateRangesByTaskId(String taskId) =
      _GetBatchDateRangesByTaskId;

  const factory ConstraintDateTimeRangesManagerEvent.updateDateRanges(List<DateRangeEntity> dateRanges) =
      _UpdateDateRanges;
}
