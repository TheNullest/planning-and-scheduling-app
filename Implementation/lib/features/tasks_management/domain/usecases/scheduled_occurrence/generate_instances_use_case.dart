import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/params/generate_instances.dart';
import 'package:zamaan/features/tasks_management/domain/services/scheduled_occurrence_generator/scheduled_occurrence_generator.dart';

class GenerateInstancesUseCase extends UseCaseWithParams<ScheduledOccurrenceGenerator,
    List<ScheduledOccurrenceEntity>, GenerateInstanceParams> {
  GenerateInstancesUseCase(super.repository);

  @override
  EResultFuture<List<ScheduledOccurrenceEntity>> call(GenerateInstanceParams params) async =>
      repository.generateInstances(params);
}
