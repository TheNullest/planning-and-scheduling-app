import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/user.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';

class UserDataMapperImpl extends UserDataMapper {
  @override
  UserEntity toEntityFromHive(UserHiveModel model) {
    try {
      return UserEntity(
        id: model.id,
        userName: model.userName,
        password: model.password,
        firstName: model.firstName,
        lastName: model.lastName,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        birthDate: model.birthDate,
        avatarPath: model.avatarPath,
        emailAddress: model.emailAddress,
        userId: model.userId,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  UserEntity toEntityFromSupabase(UserSupabaseModel model, {DataMap? relatedListModels}) {
    try {
      return model.toEntity();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  UserHiveModel toHiveModel(UserEntity entity) {
    try {
      return UserHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  UserSupabaseModel toSupabaseModel(UserEntity entity) {
    try {
      return UserSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<UserSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(UserSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<UserSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  UserSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return UserSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(UserSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
