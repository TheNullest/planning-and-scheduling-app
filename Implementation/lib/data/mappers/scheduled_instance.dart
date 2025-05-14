import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/scheduled_instance.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_instance/scheduled_instance_supabase_model.dart';

class ScheduledInstanceDataMapperImpl extends ScheduledInstanceDataMapper {
  @override
  ScheduledInstanceEntity toEntityFromHive(ScheduledInstanceHiveModel model) {
    try {
      return ScheduledInstanceEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        taskId: model.taskId,
        description: model.description,
        schedulerId: model.schedulerId,
        schedulerType: model.schedulerType,
        endDateTime: model.endDateTime,
        startDateTime: model.startDateTime,
        taskStatus: model.taskStatus,
        sequenceNumber: model.sequenceNumber,
        successPercentage: model.successPercentage,
        timezone: model.timezone,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledInstanceEntity toEntityFromSupabase(
    ScheduledInstanceSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return ScheduledInstanceEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        taskId: model.taskId,
        description: model.exceptionReason,
        schedulerId: model.schedulerId,
        schedulerType: SchedulerType.fromName(model.schedulerType),
        endDateTime: model.endDateTime,
        startDateTime: model.startDateTime,
        taskStatus: TaskStatus.fromName(model.taskStatus),
        sequenceNumber: model.sequenceNumber,
        successPercentage: model.successPercentage,
        timezone: model.timezone,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledInstanceHiveModel toHiveModel(ScheduledInstanceEntity entity) {
    try {
      return ScheduledInstanceHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledInstanceSupabaseModel toSupabaseModel(ScheduledInstanceEntity entity) {
    try {
      return ScheduledInstanceSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<ScheduledInstanceSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(ScheduledInstanceSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledInstanceSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledInstanceSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduledInstanceSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduledInstanceSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
