import 'package:zamaan/domain/params/useCase_param.dart';

class GetLogsParams extends UseCaseParam {
  GetLogsParams({required this.logIds, super.policy});

  final List<String> logIds;
}
