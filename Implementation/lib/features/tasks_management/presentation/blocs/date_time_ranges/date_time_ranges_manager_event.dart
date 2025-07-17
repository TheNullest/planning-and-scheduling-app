part of 'date_time_ranges_manager_bloc.dart';

@freezed
class DateTimeRangesManagerEvent with _$DateTimeRangesManagerEvent {
  const factory DateTimeRangesManagerEvent.started() = _Started;

  // TimeRange Events
  const factory DateTimeRangesManagerEvent.createBatchTimeRanges(List<TimeRangeEntity> timeRanges) =
      _CreateBatchTimeRanges;
  const factory DateTimeRangesManagerEvent.deleteBatchTimeRanges(List<String> ids) =
      _DeleteBatchTimeRanges;
  const factory DateTimeRangesManagerEvent.fetchBatchAllTimeRanges() = _FetchBatchAllTimeRanges;
  const factory DateTimeRangesManagerEvent.fetchBatchTimeRangesByIds(List<String> ids) =
      _FetchBatchTimeRangesByIds;
  const factory DateTimeRangesManagerEvent.updateBatchTimeRanges(List<TimeRangeEntity> timeRanges) =
      _UpdateBatchTimeRanges;

  // DateRange Events
  const factory DateTimeRangesManagerEvent.createBatchDateRanges(List<DateRangeEntity> dateRanges) =
      _CreateBatchDateRanges;
  const factory DateTimeRangesManagerEvent.deleteBatchDateRanges(List<String> ids) =
      _DeleteBatchDateRanges;
  const factory DateTimeRangesManagerEvent.fetchBatchAllDateRanges() = _FetchBatchAllDateRanges;
  const factory DateTimeRangesManagerEvent.fetchBatchDateRangesByIds(List<String> ids) =
      _FetchBatchDateRangesByIds;
  const factory DateTimeRangesManagerEvent.updateBatchDateRanges(List<DateRangeEntity> dateRanges) =
      _UpdateBatchDateRanges;
}
