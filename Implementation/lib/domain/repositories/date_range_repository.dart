import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract class DateRangeRepository extends BaseRepository<DateRangeEntity> {
  EResultFuture<List<DateRangeEntity>> getByTaskId(String taskId);
}
