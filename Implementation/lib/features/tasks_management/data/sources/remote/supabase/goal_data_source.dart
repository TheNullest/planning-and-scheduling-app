import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/goal.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/goal/goal_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/goal_data_source.dart';

class GoalSupabaseDataSourceImpl extends SupabaseDataSource<GoalSupabaseModel>
    implements GoalDataSource<GoalSupabaseModel> {
  GoalSupabaseDataSourceImpl({
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
    required GoalMapper mapper,
  })  : _mapper = mapper,
        super(mapper: mapper);

  final GoalMapper _mapper;

  @override
  EResultFuture<GoalSupabaseModel> getGoalBySubTaskId(String subTaskId) async =>
      tryCatchEither<GoalSupabaseModel>(
        action: () async {
          final result =
              await client.from(collectionPath).select().eq('sub_id', subTaskId).single();
          return Right(_mapper.fromJson(result));
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<GoalSupabaseModel>> getGoalsByTaskId(String taskId) async =>
      tryCatchEither<List<GoalSupabaseModel>>(
        action: () async {
          final result = await client.from(collectionPath).select().eq('task_id', taskId);
          return Right(_mapper.fromJsonList(result));
        },
        failureType: FailureType.remote,
      );
}
