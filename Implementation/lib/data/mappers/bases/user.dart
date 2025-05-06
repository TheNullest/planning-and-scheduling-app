import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';

abstract class UserDataMapper extends DataMapper<UserEntity, UserHiveModel, UserSupabaseModel> {}
