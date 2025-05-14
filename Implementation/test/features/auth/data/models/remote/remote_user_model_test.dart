import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';

import '../../../../../fixtures/fixture_reader.dart';

void main() {
  // Arrange
  final testModel = UserSupabaseModel.empty();
  test('[remoteUserModel] must be a subclass of [UserEntity] and [HiveUserModel]', () {
    // Arrange => testModel

    // Assert
    expect(testModel, isA<UserHiveModel>());
    expect(testModel, isA<UserEntity>());
    expect(testModel, isA<BaseEntityAbstraction>());
  });

  group('remoteUserModel', () {
    test('[remoteUserModel.fromMap] must return a [RemoteUserModel] with the right data', () {
      // Arrange => testModel
      // Act
      final actual = UserSupabaseModel.fromJsonUserProfile(
        getRemoteUserModels()[0].toSupabaseMap(),
      );
      // Assert
      expect(actual, equals(getRemoteUserModels()[0]));
    });
    test('[remoteUserModel.fromJson] must return a [RemoteUserModel] with the right data', () {
      // Arrange => testModel
      // Act
      final testJson = testModel.toSupabaseMap();
      final actual = UserSupabaseModel.fromJsonUserProfile(testJson);
      expect(actual, equals(testModel));
    });
    test('[remoteUserModel.toMap] must return a [Map] with the right data', () {
      // Arrange => testModel
      // Act
      final actual = getRemoteUserModels()[2].toSupabaseMap();
      expect(actual, equals(testMaps[2]));
    });
    test('[remoteUserModel.toJson] must return a [Json] with the right data', () {
      // Arrange => testModel
      // Act
      final actual = testModel.toJson();
      final tJson = jsonEncode(testModel.toSupabaseMap());
      // Assert
      expect(actual, equals(tJson));
    });
    test('[remoteUserModel.copyWith] must return a customed [RemoteUserModel]with the right data',
        () {
      // Arrange

      // Act
      final actual = testModel.copyWith(
        userName: 'TheNull',
        firstName: 'Moien',
        lastName: 'Janlou',
      );

      // Assert
      expect(actual.userName, equals('TheNull'));
      expect(actual.firstName, equals('Moien'));
      expect(actual.lastName, equals('Janlou'));
      expect(actual, isNot(testModel));
    });
  });
}
