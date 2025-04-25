import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/schedule_definition_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetScheduleDefinitionByTaskIdUsecase extends UsecaseWithParams<ScheduleDefinitionRepository,
    List<ScheduleDefinitionEntity>, DynamicParam<String>> {
  GetScheduleDefinitionByTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<ScheduleDefinitionEntity>> call(DynamicParam<String> params) async =>
      repository.getBatchByTaskId(params.param, policy: params.policy);
}
