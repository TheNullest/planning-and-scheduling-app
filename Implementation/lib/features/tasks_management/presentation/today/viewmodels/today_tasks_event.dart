part of 'today_tasks_bloc.dart';

@freezed
class TodayTasksEvent with _$TodayTasksEvent {
  const factory TodayTasksEvent.started() = _Started;
}