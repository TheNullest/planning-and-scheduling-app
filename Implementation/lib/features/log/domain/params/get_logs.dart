import 'package:zamaan/domain/params/usecase_param.dart';

class GetLogsParams extends UsecaseParam {
  GetLogsParams({required this.logIds, super.policy});

  final List<String> logIds;
}
