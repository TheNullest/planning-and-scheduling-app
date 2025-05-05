import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/params/generate_instances.dart';
import 'package:zamaan/features/tasks_management/domain/services/scheduled_instance_generator/scheduled_instance_generator.dart';

class GenerateInstancesUsecase extends UsecaseWithParams<ScheduledInstanceGenerator,
    List<ScheduledInstanceEntity>, GenerateInstanceParams> {
  GenerateInstancesUsecase(super.repository);

  @override
  EResultFuture<List<ScheduledInstanceEntity>> call(GenerateInstanceParams params) async =>
      repository.generateInstances(params);
}
