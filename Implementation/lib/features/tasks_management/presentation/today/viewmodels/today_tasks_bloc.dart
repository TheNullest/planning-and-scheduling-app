import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_tasks_event.dart';
part 'today_tasks_state.dart';
part 'today_tasks_bloc.freezed.dart';

class TodayTasksBloc extends Bloc<TodayTasksEvent, TodayTasksState> {
  TodayTasksBloc() : super(const _Initial()) {
    on<TodayTasksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
