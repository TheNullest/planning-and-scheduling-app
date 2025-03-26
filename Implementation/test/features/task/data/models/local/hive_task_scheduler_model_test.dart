import 'package:flutter_test/flutter_test.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/entities/task_scheduler_entity.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/task_scheduler_hive_model.dart';

void main() {
  final entity = TaskSchedulerEntity.empty();
  final testModel = TaskSchedulerHiveModel.fromEntity(entity);
  test('[hiveTaskSchedulerModel] must be a subclass of [TaskSchedulerEntity] ',
      () {
    // Arrange => testModel

    // Assert
    expect(testModel, isA<TaskSchedulerEntity>());
    expect(testModel, isA<BaseEntityAbstraction>());
  });

  group('hiveTaskSchedulerModel', () {
    test(
        '[hiveTaskSchedulerModel.toEntity] must return a [TaskSchedulerEntity] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = testModel.toEntity();
      // Assert
      expect(actual, equals(entity));
    });

    test(
        '[hiveTaskSchedulerModel.fromEntity] must return a [TaskSchedulerHiveModel] with the right data',
        () {
      // Arrange => testModel
      // Act
      final actual = TaskSchedulerHiveModel.fromEntity(entity);
      // Assert
      expect(actual, testModel);
    });

    test(
        '[hiveTaskSchedulerModel.copyWith] must return a customed [RemoteUserModel]with the right data',
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
