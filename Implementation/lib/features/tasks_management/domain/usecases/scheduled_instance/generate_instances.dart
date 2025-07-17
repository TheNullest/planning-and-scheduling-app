import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/params/generate_instances.dart';
import 'package:zamaan/features/tasks_management/domain/services/scheduled_instance_generator/scheduled_instance_generator.dart';

class GenerateInstancesUseCase extends UseCaseWithParams<ScheduledInstanceGenerator,
    List<ScheduledInstanceEntity>, GenerateInstanceParams> {
  GenerateInstancesUseCase(super.repository);

  @override
  EResultFuture<List<ScheduledInstanceEntity>> call(GenerateInstanceParams params) async =>
      repository.generateInstances(params);
}
