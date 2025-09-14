import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract class TimeRangeRepository extends BaseRepository<TimeRangeEntity> {
  EResultFuture<List<TimeRangeEntity>> getByTaskId(String taskId);
}
