import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/tag.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/tag/tag_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/tag_data_source.dart';

class TagSupabaseDataSourceImpl extends SupabaseDataSource<TagSupabaseModel, TagDataMapper>
    implements TagLocalDataSource<TagSupabaseModel> {
  TagSupabaseDataSourceImpl({
    required super.dataMapper,
    required super.client,
    required super.collectionPath,
    required super.defaultPagination,
  });

  @override
  EResultFuture<List<TagSupabaseModel>> getWithRelatedTask(String taskId) {
    // TODO: implement getWithRelatedTask
    throw UnimplementedError();
  }
}
