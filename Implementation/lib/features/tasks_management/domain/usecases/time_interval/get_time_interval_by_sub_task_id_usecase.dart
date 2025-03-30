import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/time_interval_entity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTimeIntervalBySubTaskIdUsecase extends UseCaseWithParams<
    TimeIntervalRepository, List<TimeIntervalEntity>, String> {
  GetTimeIntervalBySubTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<TimeIntervalEntity>> call(String params) async =>
      repository.getTimeIntervalBySubTaskId(params);
}
