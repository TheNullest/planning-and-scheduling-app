import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/constants/hive_box_names.dart';
import 'package:zamaan/core/error/failures/failure.dart';
import 'package:zamaan/core/error/failures/hive_failure.dart';
import 'package:zamaan/core/initializers/hive_initializer.dart';
import 'package:zamaan/core/utils/enums/enums.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/features/task/data/data_sources/hive/hive_sub_task_data_source_impl.dart';
import 'package:zamaan/features/task/data/models/local/hive_sub_task_model.dart';

class MockHiveInit extends Mock implements HiveInitializer<HiveSubTaskModel> {}

void main() {
  late HiveSubTaskDataSourceImpl dataSource;
  late HiveInitializer<HiveSubTaskModel> mockHiveInit;
  late HiveSubTaskModel model;
  late List<String> keys;
  String boxName = HiveBoxConstants.SUB_TASKS_BOX;
  setUp(() {
    mockHiveInit = MockHiveInit();
    dataSource = HiveSubTaskDataSourceImpl(hiveBox: mockHiveInit);
    model = HiveSubTaskModel.empty();
    keys = [
      uuidGenerator(),
      uuidGenerator(),
      uuidGenerator(),
      uuidGenerator(),
      uuidGenerator(),
      uuidGenerator(),
    ];
  });

  group('subTaskDataSource', () {
    test(
        '[subTaskDataSource.createEntity] must save entity to the box and returns [Right(null)] data',
        () async {
      when(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right(null));

      final result = await dataSource.createEntity(newEntity: model);

      expect(result.isRight(), true);
      expect(result, equals(const Right(null)));
      verify(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.createEntity.failureTest] must return failure when createEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockHiveInit.operator<void>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await dataSource.createEntity(newEntity: model);

      expect(result.isLeft(), true);
      expect(result, equals(const Left(HiveFailure('Error'))));
      verify(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getEntities] should retrieve all entities from the box [Right([])] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right([]));

      final result = await dataSource.getEntities();

      expect(result.isRight(), true);
      expect(result, equals(const Right<Failure, List<HiveSubTaskModel>>([])));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getEntities.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await dataSource.getEntities();

      expect(result.isLeft(), true);
      expect(
          result,
          equals(const Left<Failure, List<HiveSubTaskModel>>(
              HiveFailure('Error'))));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getEntity] should retrieve entity by id from the box and returns [Right(HiveSubTaskModel)] data',
        () async {
      when(() => mockHiveInit.operator<HiveSubTaskModel>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => Right(model));

      final result = await dataSource.getEntity(id: model.id);

      expect(result.isRight(), true);
      expect(result, equals(Right<Failure, HiveSubTaskModel>(model)));
      verify(
        () => mockHiveInit.operator<HiveSubTaskModel>(
            job: any(named: 'job'), boxName: boxName),
      ).called(1); // Verify that get was only called once with the correct ID
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getEntity.failureTest] must return failure when getEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockHiveInit.operator<HiveSubTaskModel>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure("Error")));

      final result = await dataSource.getEntity(id: model.id);

      expect(result.isLeft(), true);
      expect(result,
          equals(const Left<Failure, HiveSubTaskModel>(HiveFailure("Error"))));
      verify(
        () => mockHiveInit.operator<HiveSubTaskModel>(
            job: any(named: 'job'), boxName: boxName),
      ).called(1); // Verify that get was only called once with the correct ID
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.updateEntity] must update entity in the box and returns [Right(null)] data',
        () async {
      when(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right(null));

      final result = await dataSource.updateEntity(entity: model);

      expect(result.isRight(), true);
      expect(result, equals(const Right<Failure, void>(null)));
      verify(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.updateEntity.failureTest] must return failure when updateEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockHiveInit.operator<void>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure("Error")));

      final result = await dataSource.updateEntity(entity: model);

      expect(result.isLeft(), true);
      expect(result, equals(const Left<Failure, void>(HiveFailure("Error"))));
      verify(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.deleteEntity] must delete entity by id from the box and returns [Right(null)] data',
        () async {
      when(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right(null));

      final result = await dataSource.deleteEntity(id: model.id);

      expect(result.isRight(), true);
      expect(result, equals(const Right<Failure, void>(null)));
      verify(
        () => mockHiveInit.operator<void>(
            job: any(named: 'job'), boxName: boxName),
      ).called(1); // Verify that get was only called once with the correct ID
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.deleteEntity.failureTest] must return failure when deleteEntity fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockHiveInit.operator<void>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure("Error")));

      final result = await dataSource.deleteEntity(id: model.id);

      expect(result.isLeft(), true);
      expect(result, equals(const Left<Failure, void>(HiveFailure("Error"))));
      verify(
        () => mockHiveInit.operator<void>(
            job: any(named: 'job'), boxName: boxName),
      ).called(1); // Verify that get was only called once with the correct ID
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.deleteAllSelected] should delete from the box all the entities whose [ID] it has received and returns [Right(null)] data',
        () async {
      when(() => mockHiveInit.operator<void>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right(null));

      final result = await dataSource.deleteAllSelected(keys);

      expect(result.isRight(), true);
      expect(result, equals(const Right<Failure, void>(null)));
      verify(
        () => mockHiveInit.operator<void>(
            job: any(named: 'job'), boxName: boxName),
      ).called(1); // Verify that get was only called once with the correct ID
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.deleteAllSelected.failureTest] must return failure when delete fails with [Left(HiveFailure("Error"))] data',
        () async {
      when(() => mockHiveInit.operator<void>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure("Error")));

      final result = await dataSource.deleteAllSelected(keys);

      expect(result.isLeft(), true);
      expect(result, equals(const Left<Failure, void>(HiveFailure("Error"))));
      verify(
        () => mockHiveInit.operator<void>(
            job: any(named: 'job'), boxName: boxName),
      ).called(1); // Verify that get was only called once with the correct ID
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getSubTasksByPriority] should retrieve all entities from the box [Right([])] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right([]));

      final result = await dataSource.getSubTasksByPriority(Priority.high);

      expect(result.isRight(), true);
      expect(result, equals(const Right<Failure, List<HiveSubTaskModel>>([])));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getSubTasksByPriority.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await dataSource.getSubTasksByPriority(Priority.high);

      expect(result.isLeft(), true);
      expect(
          result,
          equals(const Left<Failure, List<HiveSubTaskModel>>(
              HiveFailure('Error'))));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getSubTasksByStatus] should retrieve all entities from the box [Right([])] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right([]));

      final result = await dataSource.getSubTasksByStatus(Status.notStarted);

      expect(result.isRight(), true);
      expect(result, equals(const Right<Failure, List<HiveSubTaskModel>>([])));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getSubTasksByStatus.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await dataSource.getSubTasksByStatus(Status.notStarted);

      expect(result.isLeft(), true);
      expect(
          result,
          equals(const Left<Failure, List<HiveSubTaskModel>>(
              HiveFailure('Error'))));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getSubTasksByMainTaskId] should retrieve all entities from the box [Right([])] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).thenAnswer((_) async => const Right([]));

      final result = await dataSource.getSubTasksByMainTaskId('1');

      expect(result.isRight(), true);
      expect(result, equals(const Right<Failure, List<HiveSubTaskModel>>([])));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });

    test(
        '[subTaskDataSource.getSubTasksByMainTaskId.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
        () async {
      when(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
              job: any(named: 'job'), boxName: boxName))
          .thenAnswer((_) async => const Left(HiveFailure('Error')));

      final result = await dataSource.getSubTasksByMainTaskId('1');

      expect(result.isLeft(), true);
      expect(
          result,
          equals(const Left<Failure, List<HiveSubTaskModel>>(
              HiveFailure('Error'))));
      verify(() => mockHiveInit.operator<List<HiveSubTaskModel>>(
          job: any(named: 'job'),
          boxName: boxName)).called(1); // Verify that get was only called once
      verifyNoMoreInteractions(mockHiveInit);
    });
  });
}