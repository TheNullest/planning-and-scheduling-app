import 'package:flutter_test/flutter_test.dart';
import 'package:zamaan/core/entities/base_entity_abstraction.dart';
import 'package:zamaan/features/task/data/models/local/hive_sub_task_model.dart';
import 'package:zamaan/features/task/domain/entities/sub_task_entity.dart';

void main() {
  final SubTaskEntity entity = SubTaskEntity.empty();
  final HiveSubTaskModel testModel = HiveSubTaskModel.fromEntity(entity);
  test('[hiveSubTaskModel] must be a subclass of [SubTaskEntity] ', () {
    // Arrange => testModel

    // Assert
    expect(testModel, isA<SubTaskEntity>());
    expect(testModel, isA<BaseEntityAbstraction>());
  });

  group('hiveSubTaskModel', () {
    test(
        '[hiveSubTaskModel.toEntity] must return a [SubTaskEntity] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = testModel.toEntity();
      // Assert
      expect(actual, equals(entity));
    });

    test(
        '[hiveSubTaskModel.fromEntity] must return a [HiveSubTaskModel] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = HiveSubTaskModel.fromEntity(entity);
      // Assert
      expect(actual, testModel);
    });

    test(
        '[hiveSubTaskModel.copyWith] must return a customed [RemoteUserModel]with the right data',
        () {
      // Arrange

      // Act
      final actual = testModel.copyWith(order: 2, description: 'Something');

      // Assert
      expect(actual.order, equals(2));
      expect(actual.description, equals('Something'));
      expect(actual, isNot(testModel));
    });
  });
}