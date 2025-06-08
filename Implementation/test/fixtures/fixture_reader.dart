import 'dart:convert';
import 'dart:io';

import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';

String fixtures(String fileName) => File('test/fixtures/$fileName').readAsStringSync();

final String testJson = fixtures('user.json');
final List<dynamic> testMaps = jsonDecode(testJson) as List<dynamic>;

List<UserSupabaseModel> getRemoteUserModels() {
  final models = <UserSupabaseModel>[];
  for (final element in testMaps) {
    models.add(
      UserSupabaseModel.fromJsonUserProfile(element as Map<String, dynamic>),
    );
  }
  return models;
}

List<UserHiveModel> getHiveUserModels() {
  final hiveModels = <UserHiveModel>[];
  for (final item in getRemoteUserModels()) {
    hiveModels.add(UserHiveModel.fromEntity(item.toEntity()));
  }
  return hiveModels;
}
