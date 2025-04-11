import 'package:zamaan/domain/params/dynamic_params.dart';

class DateRangeParams<T> extends UsecaseParams<T> {
  DateRangeParams({
    required this.fromDate,
    required this.toDate,
    super.param,
    super.fromLocal,
    super.fromRemote,
  });

  final DateTime fromDate;
  final DateTime toDate;
}
