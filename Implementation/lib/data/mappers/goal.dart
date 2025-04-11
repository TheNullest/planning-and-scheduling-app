import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/goal/goal_supabase_model.dart';

class GoalMapper extends Mapper<GoalEntity, GoalHiveModel, GoalSupabaseModel> {
  @override
  GoalEntity toEntityFromHive(GoalHiveModel model) => tryCatchSimple<GoalEntity>(
        action: () => model.toEntity(),
        failureType: FailureType.local,
      );

  @override
  GoalEntity toEntityFromSupabase(GoalSupabaseModel model) => tryCatchSimple<GoalEntity>(
        action: () => GoalEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          taskId: model.taskId,
          measurementUnitId: model.measurementUnitId,
          measurementUnitValue: model.measurementUnitValue,
          perActiveDay: model.perActiveDay!,
          perActiveHour: model.perActiveHour!,
          perActiveMonth: model.perActiveMonth!,
          perActiveWeek: model.perActiveWeek!,
          perActiveYear: model.perActiveYear!,
          subTaskId: model.subTaskId,
        ),
        failureType: FailureType.local,
      );

  @override
  GoalHiveModel toHiveModel(GoalEntity entity) => tryCatchSimple<GoalHiveModel>(
        action: () => GoalHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  GoalSupabaseModel toSupabaseModel(GoalEntity entity) => tryCatchSimple<GoalSupabaseModel>(
        action: () => GoalSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<GoalSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(GoalSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<GoalSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  GoalSupabaseModel fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => GoalSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(GoalSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
