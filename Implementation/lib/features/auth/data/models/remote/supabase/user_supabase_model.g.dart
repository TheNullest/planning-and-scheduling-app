// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$UserSupabaseModelToJson(UserSupabaseModel instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'password': instance.password,
      'email_address': instance.emailAddress,
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'birth_date': instance.birthDate?.toIso8601String(),
      'avatar_path': instance.avatarPath,
      'bio': instance.description,
    };

_$UserSupabaseModelImpl _$$UserSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSupabaseModelImpl(
      userName: json['user_name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      password: json['password'] as String,
      emailAddress: json['email_address'] as String,
      id: json['id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      avatarPath: json['avatar_path'] as String?,
      description: json['bio'] as String?,
    );

Map<String, dynamic> _$$UserSupabaseModelImplToJson(
        _$UserSupabaseModelImpl instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'password': instance.password,
      'email_address': instance.emailAddress,
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'birth_date': instance.birthDate?.toIso8601String(),
      'avatar_path': instance.avatarPath,
      'bio': instance.description,
    };
