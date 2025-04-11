import 'package:zamaan/domain/params/dynamic_params.dart';

class DateRangeParams<T> extends UsecaseParams<T> {
  DateRangeParams({
    required this.startAt,
    required this.dueDate,
    super.param,
    super.fromLocal,
    super.fromRemote,
  });

  final DateTime startAt;
  final DateTime dueDate;
}
