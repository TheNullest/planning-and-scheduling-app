import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/user_entity.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';

part 'user_hive_model.g.dart';

@HiveType(typeId: 0)
class UserHiveModel extends UserEntity {
  UserHiveModel({
    required super.userName,
    required super.password,
    required super.firstName,
    required super.lastName,
    required super.emailAddress,
    super.id = '',
    super.description,
    super.createdAt,
    super.updatedAt,
    super.birthDate,
    super.avatarPath,
  });

  // For the purpose of testing
  UserHiveModel.empty() : super.forTest();

  factory UserHiveModel.fromEntity(UserEntity entity) => UserHiveModel(
        id: entity.id,
        userName: entity.userName,
        password: entity.password,
        firstName: entity.firstName,
        lastName: entity.lastName,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        birthDate: entity.birthDate,
        avatarPath: entity.avatarPath,
        emailAddress: entity.emailAddress,
      );
  factory UserHiveModel.fromRemote(UserSupabaseModel entity) => UserHiveModel(
        id: entity.id,
        userName: entity.userName,
        password: entity.password,
        firstName: entity.firstName,
        lastName: entity.lastName,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        birthDate: entity.birthDate,
        avatarPath: entity.avatarPath,
        emailAddress: entity.emailAddress,
      );

  @override
  UserHiveModel copyWith({
    String? id,
    int? order,
    String? userName,
    String? password,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isSynced,
    String? description,
    String? avatarPath,
    String? emailAddress,
  }) =>
      UserHiveModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        birthDate: birthDate ?? this.birthDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        avatarPath: avatarPath ?? this.avatarPath,
        emailAddress: emailAddress ?? this.emailAddress,
      );
}
