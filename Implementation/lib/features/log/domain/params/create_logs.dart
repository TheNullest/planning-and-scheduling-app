import 'package:zamaan/domain/params/useCase_param.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';

class CreateLogsParams extends UseCaseParam {
  CreateLogsParams({
    required this.logs,
    super.policy,
  });

  final List<LogEntity> logs;
}
