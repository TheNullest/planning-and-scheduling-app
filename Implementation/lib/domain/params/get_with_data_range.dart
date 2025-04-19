import 'package:zamaan/domain/params/usecase_param.dart';

class GetWithDateRangeParams extends UsecaseParam {
  GetWithDateRangeParams({required this.fromDate, required this.toDate, super.policy});

  final DateTime fromDate;
  final DateTime toDate;
}
