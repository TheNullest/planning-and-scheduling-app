import 'package:flutter_test/flutter_test.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/task_planner.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_scheduler_hive_model.dart';

void main() {
  final entity = TaskPlanrEntity.empty();
  final testModel = TaskPlanrHiveModel.fromEntity(entity);
  test('[hiveTaskPlanrModel] must be a subclass of [TaskPlanrEntity] ',
      () {
    // Arrange => testModel

    // Assert
    expect(testModel, isA<TaskPlanrEntity>());
    expect(testModel, isA<BaseEntityAbstraction>());
  });

  group('hiveTaskPlanrModel', () {
    test(
        '[hiveTaskPlanrModel.toEntity] must return a [TaskPlanrEntity] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = testModel.toEntity();
      // Assert
      expect(actual, equals(entity));
    });

    test(
        '[hiveTaskPlanrModel.fromEntity] must return a [TaskPlanrHiveModel] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = TaskPlanrHiveModel.fromEntity(entity);
      // Assert
      expect(actual, testModel);
    });

    test(
        '[hiveTaskPlanrModel.copyWith] must return a customed [RemoteUserModel]with the right data',
        () {
      // Arrange

      // Act
      final actual = testModel.copyWith(description: 'Something');

      // Assert
      expect(actual.description, equals('Something'));
      expect(actual, isNot(testModel));
    });
  });
}
