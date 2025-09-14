import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_occurrence_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_occurrence/scheduled_occurrence_supabase_model.dart';

abstract class ScheduledOccurrenceDataMapper extends DataMapper<ScheduledOccurrenceEntity,
    ScheduledOccurrenceHiveModel, ScheduledOccurrenceSupabaseModel> {}
