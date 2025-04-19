import 'package:zamaan/domain/params/get_with_data_range.dart';

class DynamicWithDateRangeParams<T> extends GetWithDateRangeParams {
  DynamicWithDateRangeParams({
    required super.fromDate,
    required super.toDate,
    required this.params,
    super.policy,
  });

  final T params;
}
