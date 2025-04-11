import 'package:flutter_test/flutter_test.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';

void main() {
  final entity = UserEntity.forTest();
  final testModel = UserHiveModel.fromEntity(entity);
  test('[hiveUserModel] must be a subclass of [UserEntity] ', () {
    // Arrange => testModel

    // Assert
    expect(testModel, isA<UserEntity>());
    expect(testModel, isA<BaseEntityAbstraction>());
  });

  group('hiveUserModel', () {
    test(
        '[hiveUserModel.toEntity] must return a [UserEntity] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = testModel.toEntity();
      // Assert
      expect(actual, equals(entity));
    });

    test(
        '[hiveUserModel.fromEntity] must return a [HiveUserModel] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = UserHiveModel.fromEntity(entity);
      // Assert
      expect(actual, testModel);
    });

    test(
        '[hiveUserModel.copyWith] must return a customed [RemoteUserModel]with the right data',
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
