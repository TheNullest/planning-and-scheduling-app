import 'package:zamaan/domain/params/usecase_param.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';

class CreateLogsParams extends UsecaseParam {
  CreateLogsParams({
    required this.logs,
    super.policy,
  });

  final List<LogEntity> logs;
}
