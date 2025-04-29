import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/goal/goal_supabase_model.dart';

class GoalSupabaseDataSourceImpl extends SupabaseDataSource<GoalSupabaseModel> {
  GoalSupabaseDataSourceImpl({
    required super.mapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });
}
