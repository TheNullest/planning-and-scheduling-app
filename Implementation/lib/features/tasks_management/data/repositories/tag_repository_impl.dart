import 'package:zamaan/data/mappers/tag.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/tag/tag_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/tag_data_source.dart';

class TagRepositoryImpl extends BaseRepositoryImpl<
    TagEntity,
    TagHiveModel,
    TagSupabaseModel,
    TagDataSource<TagHiveModel>,
    TagDataSource<TagSupabaseModel>,
    TagMapper> implements TagRepository {
  TagRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  });
}
