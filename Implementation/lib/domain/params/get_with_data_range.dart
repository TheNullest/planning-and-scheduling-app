import 'package:zamaan/domain/params/useCase_param.dart';

class GetWithDateRangeParams extends UseCaseParam {
  GetWithDateRangeParams({required this.fromDate, required this.toDate, super.policy});

  final DateTime fromDate;
  final DateTime toDate;
}
