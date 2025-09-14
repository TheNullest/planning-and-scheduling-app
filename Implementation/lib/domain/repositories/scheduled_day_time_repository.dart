import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class ScheduledDayTimeRepository extends BaseRepository<ScheduledDayTimeEntity> {
  // Additional search methods specific to ScheduledTimeEntity

  /// Retrieves scheduled times by the main task ID.
  ///
  /// - [taskId] - The ID of the main task.
  /// Returns a `ResultFuture<ScheduledDayTimeEntity>` containing the matching scheduled times.
  EResultFuture<List<ScheduledDayTimeEntity>> getByTaskId(String taskId);
}
