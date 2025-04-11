import 'package:zamaan/core/enums/priority_enum.dart';
import 'package:zamaan/core/enums/status_enum.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/base/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';

abstract class SubTaskDataSource<SubTaskModel extends SubTaskEntity>
    extends BaseDataSourceAbstraction<SubTaskModel> {
  EResultFuture<List<SubTaskModel>> getSubTasksByPriority(
    Priority priority,
  );

  EResultFuture<List<SubTaskModel>> getSubTasksByStatus(
    Status status,
  );

  EResultFuture<List<SubTaskModel>> getSubTasksByTaskId(
    String taskId,
  );
}
