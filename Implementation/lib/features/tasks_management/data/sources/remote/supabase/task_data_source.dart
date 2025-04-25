import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/task.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task/task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/task_data_source.dart';

class TaskSupabaseDataSourceImpl extends SupabaseDataSource<TaskSupabaseModel>
    implements TaskDataSource<TaskSupabaseModel> {
  TaskSupabaseDataSourceImpl({
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
    required TaskMapper mapper,
  })  : _mapper = mapper,
        super(mapper: mapper);

  final TaskMapper _mapper;

  @override
  String get selectQuery => '*, task_tags(*), categories(*)';

  @override
  EResultFuture<TaskSupabaseModel> getByScheduleDefinitionId(String schedulerId) async =>
      tryCatchEither<TaskSupabaseModel>(
        action: () async {
          final result = await client
              .from(collectionPath)
              .select(selectQuery)
              .eq('schedule_definition_id', schedulerId)
              .single();
          return Right(_mapper.fromJson(result));
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<TaskSupabaseModel>> getBatchByCategories(List<String> categoryIds) async =>
      tryCatchEither<List<TaskSupabaseModel>>(
        action: () async {
          final result = await client.from(collectionPath).select(selectQuery).or(
                conditionToString(
                  conditions: categoryIds,
                  join: ',',
                  fieldName: 'schedule_definition_id',
                ),
              );
          return Right(_mapper.fromJsonList(result));
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<TaskSupabaseModel>> getBatchByDueDateRange(
    DateTime dueDateFrom,
    DateTime dueDateTo,
  ) async =>
      getAllWithinDateRange(fromDate: dueDateFrom, toDate: dueDateTo, fieldName: 'due_date');

  @override
  EResultFuture<List<TaskSupabaseModel>> getBatchByFixedTags(List<String> tagIds) async =>
      getAllByValues(
        tagIds,
        fieldName: 'fixed_tag_ids',
      );

  @override
  EResultFuture<List<TaskSupabaseModel>> getBatchByPriority(Priority priority) async =>
      getAllByValues(
        [priority.name],
        fieldName: priority.name,
      );

  @override
  EResultFuture<List<TaskSupabaseModel>> getBatchArchived() async =>
      tryCatchEither<List<TaskSupabaseModel>>(
        action: () async {
          final result = await client.from(collectionPath).select().eq('archived', true);
          return Right(_mapper.fromJsonList(result));
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<TaskSupabaseModel>> getBatchByStatus(TaskStatus status) async =>
      tryCatchEither<List<TaskSupabaseModel>>(
        action: () async {
          final result = await client.from(collectionPath).select().eq('task_status', status.name);
          return Right(_mapper.fromJsonList(result));
        },
        failureType: FailureType.remote,
      );
}
