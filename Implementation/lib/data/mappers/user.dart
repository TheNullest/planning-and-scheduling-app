import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';

class UserDataMapper extends DataMapper<UserEntity, UserHiveModel, UserSupabaseModel> {
  @override
  UserEntity toEntityFromHive(UserHiveModel model) => tryCatchSimple<UserEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  UserEntity toEntityFromSupabase(UserSupabaseModel model, {DataMap? relatedListModels}) =>
      tryCatchSimple<UserEntity>(
        action: () => model.toEntity(),
        failureType: FailureType.local,
      );

  @override
  UserHiveModel toHiveModel(UserEntity entity) => tryCatchSimple<UserHiveModel>(
        action: () => UserHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  UserSupabaseModel toSupabaseModel(UserEntity entity) => tryCatchSimple<UserSupabaseModel>(
        action: () => UserSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<UserSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(UserSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<UserSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  UserSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => UserSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(UserSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
