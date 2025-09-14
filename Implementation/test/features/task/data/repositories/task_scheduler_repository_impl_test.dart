import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/domain/entities/task_planner.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/shell/domain/params/get_by_task_ids_and_date_range_params.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_scheduler_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/hive/hive_task_scheduler_data_source_impl.dart';

class MockDataSource extends Mock implements HiveTaskPlanrDataSourceImpl {}

void main() {
  late HiveTaskPlanrDataSourceImpl mockDataSource;
  late TaskPlanrRepositoryImpl taskPlanrRepo;
  late TaskPlanrHiveModel model;
  late TaskPlanrEntity entity;
  late DateTime startAt;
  late DateTime endAt;
  late GetByTaskIdsAndDateRangeParams params;
  setUp(() {
    mockDataSource = MockDataSource();
    taskPlanrRepo = TaskPlanrRepositoryImpl(mockDataSource);
    entity = TaskPlanrEntity.empty();

    model = TaskPlanrHiveModel.fromEntity(entity);
    startAt = DateTime(2022);
    endAt = DateTime.now();
    params = GetByTaskIdsAndDateRangeParams(
      mainTaskIds: [],
      startAt: startAt,
      endAt: endAt,
    );
  });

  group('createEntity', () {
    test(
        '[taskPlanrRepo.createEntity] must call the [createEntity] of the [dataSource] then returns [Right(null)] data',
        () async {
      when(
        () => mockDataSource.createEntities(
          newEntity: TaskPlanrHiveModel.fromEntity(entity),
        ),
      ).thenAnswer((_) async => const Right(null));

      final result = await taskPlanrRepo.createEntity(newEntity: entity);

      expect(result.isRight(), true);
      expect(result, equals(const Right(null)));
      verify(
        () => mockDataSource.createEntities(
          newEntity: TaskPlanrHiveModel.fromEntity(entity),
        ),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.createEntity.failureTest] must return failure when createEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(
        () => mockDataSource.createEntities(
          newEntity: TaskPlanrHiveModel.fromEntity(entity),
        ),
      ).thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.createEntity(newEntity: entity);

      expect(result.isLeft(), true);
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(
        () => mockDataSource.createEntities(
          newEntity: TaskPlanrHiveModel.fromEntity(entity),
        ),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getEntities', () {
    test(
        '[taskPlanrRepo.getEntities] must call the [getEntities] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(() => mockDataSource.getEntities()).thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getEntities();

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(() => mockDataSource.getEntities()).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getEntities.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.getEntities())
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getEntities();

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(() => mockDataSource.getEntities()).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getEntity', () {
    test(
        '[taskPlanrRepo.getEntity] must call the [getEntity] of the [dataSource] then returns [Right(TaskPlanrEntity)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(() => mockDataSource.getEntity(id: model.id)).thenAnswer((_) async => Right(model));

      final result = await taskPlanrRepo.getEntity(id: entity.id);

      expect(result.isRight(), true);
      expect(result, Right<Failure, TaskPlanrEntity>(entity));
      verify(() => mockDataSource.getEntity(id: model.id))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getEntity.failureTest] must return failure when getEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.getEntity(id: model.id))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getEntity(id: entity.id);

      expect(result.isLeft(), true);
      expect(
        result,
        equals(
          const Left<Failure, TaskPlanrEntity>(HiveFailure('Error')),
        ),
      );
      verify(() => mockDataSource.getEntity(id: model.id))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('updateEntity', () {
    test(
        '[taskPlanrRepo.updateEntity] must call the [updateEntity] of the [dataSource] then returns [Right(null)] data',
        () async {
      when(() => mockDataSource.updateEntity(entity: model))
          .thenAnswer((_) async => const Right(null));

      final result = await taskPlanrRepo.updateEntity(entity: entity);

      expect(result.isRight(), true);
      expect(result, const Right(null));
      verify(() => mockDataSource.updateEntity(entity: model))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.updateEntity.failureTest] must return failure when updateEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.updateEntity(entity: model))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.updateEntity(entity: entity);

      expect(result.isLeft(), true);
      expect(result, const Left(HiveFailure('Error')));
      verify(() => mockDataSource.updateEntity(entity: model))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('deleteEntity', () {
    test(
        '[taskPlanrRepo.deleteEntity] must call the [deleteEntity] of the [dataSource] then returns [Right(null)] data',
        () async {
      when(() => mockDataSource.deleteEntity(id: model.id))
          .thenAnswer((_) async => const Right(null));

      final result = await taskPlanrRepo.deleteEntity(id: entity.id);

      expect(result.isRight(), true);
      expect(result, const Right(null));
      verify(() => mockDataSource.deleteEntity(id: model.id))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.deleteEntity.failureTest] must return failure when deleteEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.deleteEntity(id: model.id))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.deleteEntity(id: entity.id);

      expect(result.isLeft(), true);
      expect(result, const Left(HiveFailure('Error')));
      verify(() => mockDataSource.deleteEntity(id: model.id))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('deleteAllSelected', () {
    test(
        '[taskPlanrRepo.deleteAllSelected] must call the [deleteAllSelected] of the [dataSource] then returns [Right(null)] data',
        () async {
      when(() => mockDataSource.deleteAllSelected([model.id]))
          .thenAnswer((_) async => const Right(null));

      final result = await taskPlanrRepo.deleteAllSelected([model.id]);

      expect(result.isRight(), true);
      expect(result, const Right(null));
      verify(() => mockDataSource.deleteAllSelected([model.id]))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.deleteAllSelected.failureTest] must return failure when deleteAllSelected fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.deleteAllSelected([model.id]))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.deleteAllSelected([model.id]);

      expect(result.isLeft(), true);
      expect(result, const Left(HiveFailure('Error')));
      verify(() => mockDataSource.deleteAllSelected([model.id]))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrByMainTaskIdsAndDateRange', () {
    test(
        '[taskPlanrRepo.getTaskPlanrByMainTaskIdsAndDateRange] must call the [getTaskPlanrByMainTaskIdsAndDateRange] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(
        () => mockDataSource.getTaskPlanrsByMainTaskIdsAndDateRange(
          mainTaskIds: [],
          startAt: startAt,
          endAt: endAt,
        ),
      ).thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getTaskPlanrsByMainTaskIdsAndDateRange(params);

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(
        () => mockDataSource.getTaskPlanrsByMainTaskIdsAndDateRange(
          mainTaskIds: [],
          startAt: startAt,
          endAt: endAt,
        ),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsByMainTaskIdsAndDateRange.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(
        () => mockDataSource.getTaskPlanrsByMainTaskIdsAndDateRange(
          mainTaskIds: [],
          startAt: startAt,
          endAt: endAt,
        ),
      ).thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getTaskPlanrsByMainTaskIdsAndDateRange(params);

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(
        () => mockDataSource.getTaskPlanrsByMainTaskIdsAndDateRange(
          mainTaskIds: [],
          startAt: startAt,
          endAt: endAt,
        ),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrsByEndTime', () {
    test(
        '[taskPlanrRepo.getTaskPlanrsByEndTime] must call the [getTaskPlanrsByEndTime] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(() => mockDataSource.getBatchByDueDate(endAt)).thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getTaskPlanrsByEndTime(endAt);

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(() => mockDataSource.getBatchByDueDate(endAt))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsByMainTaskIdsAndDateRange.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.getBatchByDueDate(endAt))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getTaskPlanrsByEndTime(endAt);

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(() => mockDataSource.getBatchByDueDate(endAt))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrsByMainTaskId', () {
    test(
        '[taskPlanrRepo.getTaskPlanrsByMainTaskId] must call the [getTaskPlanrsByMainTaskId] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(() => mockDataSource.getTaskPlanrsByMainTaskId('1'))
          .thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getTaskPlanrsByMainTaskId('1');

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(() => mockDataSource.getTaskPlanrsByMainTaskId('1'))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsByMainTaskId.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.getTaskPlanrsByMainTaskId('1'))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getTaskPlanrsByMainTaskId('1');

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(() => mockDataSource.getTaskPlanrsByMainTaskId('1'))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrsByRepetitionType', () {
    test(
        '[taskPlanrRepo.getTaskPlanrsByRepetitionType] must call the [getTaskPlanrsByRepetitionType] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(
        () => mockDataSource.getBatchByRepetitionType(
          RepetitionType.every,
        ),
      ).thenAnswer((_) async => const Right([]));

      final result =
          await taskPlanrRepo.getTaskPlanrsByRepetitionType(RepetitionType.every);

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(
        () => mockDataSource.getBatchByRepetitionType(RepetitionType.every),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsByRepetitionType.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(
        () => mockDataSource.getBatchByRepetitionType(RepetitionType.every),
      ).thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result =
          await taskPlanrRepo.getTaskPlanrsByRepetitionType(RepetitionType.every);

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(
        () => mockDataSource.getBatchByRepetitionType(RepetitionType.every),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrsBySpecificTimes', () {
    test(
        '[taskPlanrRepo.getTaskPlanrsBySpecificTimes] must call the [getTaskPlanrsBySpecificTimes] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(() => mockDataSource.getBatchBySpecificTimes([]))
          .thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getTaskPlanrsBySpecificTimes([]);

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(() => mockDataSource.getBatchBySpecificTimes([]))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsBySpecificTimes.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.getBatchBySpecificTimes([]))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getTaskPlanrsBySpecificTimes([]);

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(() => mockDataSource.getBatchBySpecificTimes([]))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrsByStartTime', () {
    test(
        '[taskPlanrRepo.getTaskPlanrsByStartTime] must call the [getTaskPlanrsByStartTime] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(() => mockDataSource.getBatchByStartTime(startAt))
          .thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getTaskPlanrsByStartTime(startAt);

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(() => mockDataSource.getBatchByStartTime(startAt))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsByStartTime.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.getBatchByStartTime(startAt))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getTaskPlanrsByStartTime(startAt);

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(() => mockDataSource.getBatchByStartTime(startAt))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrsByTimeUnit', () {
    test(
        '[taskPlanrRepo.getTaskPlanrsByTimeUnit] must call the [getTaskPlanrsByTimeUnit] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(() => mockDataSource.getBatchByTimeUnit(IntervalUnit.hour))
          .thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getTaskPlanrsByTimeUnit(IntervalUnit.hour);

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(() => mockDataSource.getBatchByTimeUnit(IntervalUnit.hour))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsByTimeUnit.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockDataSource.getBatchByTimeUnit(IntervalUnit.hour))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getTaskPlanrsByTimeUnit(IntervalUnit.hour);

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(() => mockDataSource.getBatchByTimeUnit(IntervalUnit.hour))
          .called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getTaskPlanrsWithinDateRange', () {
    test(
        '[taskPlanrRepo.getTaskPlanrsWithinDateRange] must call the [getTaskPlanrsWithinDateRange] of the [dataSource] then returns [Right(List<TaskPlanrEntity>)] data'
        'which will turn into [Right(List<TaskPlanrEntity>)] data', () async {
      when(
        () => mockDataSource.getTaskPlanrsWithinDateRange(
          startDate: startAt,
          dueDate: endAt,
        ),
      ).thenAnswer((_) async => const Right([]));

      final result = await taskPlanrRepo.getTaskPlanrsWithinDateRange(
        startDate: startAt,
        endDate: endAt,
      );

      expect(result.isRight(), true);
      expect(result, isA<Right<Failure, List<TaskPlanrEntity>>>());
      verify(
        () => mockDataSource.getTaskPlanrsWithinDateRange(
          startDate: startAt,
          dueDate: endAt,
        ),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });

    test(
        '[taskPlanrRepo.getTaskPlanrsByTimeUnit.failureTests] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(
        () => mockDataSource.getTaskPlanrsWithinDateRange(
          startDate: startAt,
          dueDate: endAt,
        ),
      ).thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await taskPlanrRepo.getTaskPlanrsWithinDateRange(
        startDate: startAt,
        endDate: endAt,
      );

      expect(result.isLeft(), true);
      expect(result, isA<Left<Failure, List<TaskPlanrEntity>>>());
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(
        () => mockDataSource.getTaskPlanrsWithinDateRange(
          startDate: startAt,
          dueDate: endAt,
        ),
      ).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockDataSource);
    });
  });
}
