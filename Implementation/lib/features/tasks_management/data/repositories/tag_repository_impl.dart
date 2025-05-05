import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/tag/tag_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/tag_data_source.dart';

class TagRepositoryImpl extends BaseRepositoryImpl<
    TagEntity,
    TagHiveModel,
    TagSupabaseModel,
    TagLocalDataSource<TagHiveModel>,
    SupabaseDataSource<TagSupabaseModel>,
    DataMapper<TagEntity, TagHiveModel, TagSupabaseModel>> implements TagRepository {
  TagRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  });
}
