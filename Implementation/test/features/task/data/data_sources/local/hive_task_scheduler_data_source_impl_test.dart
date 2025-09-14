// // ignore_for_file: inference_failure_on_instance_creation

// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:zamaan/core/enums/enums.dart';
// import 'package:zamaan/core/error/failures/failure.dart';
// import 'package:zamaan/core/error/failures/hive_failure.dart';
// import 'package:zamaan/core/services/hive/hive_services.dart';
// import 'package:zamaan/core/utils/uuid.dart';
// import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
// import 'package:zamaan/features/task_planner/data/models/task_scheduler_local_model.dart';
// import 'package:zamaan/features/task_planner/data/sources/hive_task_scheduler_data_source_impl.dart';

// class MockHiveInit extends Mock
//     implements HiveServices<TaskPlanrHiveModel> {}

// void main() {
//   late HiveTaskPlanrDataSourceImpl dataSource;
//   late HiveServices<TaskPlanrHiveModel> mockHiveInit;
//   late TaskPlanrHiveModel model;
//   late List<String> keys;
//   late DateTime startAt;
//   late DateTime endAt;
//   const boxName = HiveBoxConstants.taskPlanrsBox;
//   setUp(() {
//     mockHiveInit = MockHiveInit();
//     dataSource = HiveTaskPlanrDataSourceImpl(hiveBox: mockHiveInit);
//     model = TaskPlanrHiveModel.empty();
//     startAt = DateTime(2024);
//     endAt = DateTime.now();
//     keys = [
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//     ];
//   });

//   group('taskPlanrsDataSource', () {
//     test(
//         '[taskPlanrsDataSource.createEntity] must save entity to the box and returns [Right(null)] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right(null));

//       final result = await dataSource.createEntity(newEntity: model);

//       expect(result.isRight(), true);
//       expect(result, equals(const Right(null)));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.createEntity.failureTest] must return failure when createEntity fails with [Left(HiveFailure("Error"))] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.createEntity(newEntity: model);

//       expect(result.isLeft(), true);
//       expect(result, equals(const Left(HiveFailure('Error'))));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getEntities] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getEntities();

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getEntities.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getEntities();

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getEntity] should retrieve entity by id from the box and returns [Right(TaskPlanrHiveModel)] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<TaskPlanrHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => Right(model));

//       final result = await dataSource.getEntity(id: model.id);

//       expect(result.isRight(), true);
//       expect(result, equals(Right<Failure, TaskPlanrHiveModel>(model)));
//       verify(
//         () => mockHiveInit.operator<TaskPlanrHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getEntity.failureTest] must return failure when getEntity fails with [Left(HiveFailure("Error"))] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<TaskPlanrHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getEntity(id: model.id);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, TaskPlanrHiveModel>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<TaskPlanrHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.updateEntity] must update entity in the box and returns [Right(null)] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right(null));

//       final result = await dataSource.updateEntity(entity: model);

//       expect(result.isRight(), true);
//       expect(result, equals(const Right<Failure, void>(null)));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.updateEntity.failureTest] must return failure when updateEntity fails with [Left(HiveFailure("Error"))] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.updateEntity(entity: model);

//       expect(result.isLeft(), true);
//       expect(result, equals(const Left<Failure, void>(HiveFailure('Error'))));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.deleteEntity] must delete entity by id from the box and returns [Right(null)] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right(null));

//       final result = await dataSource.deleteEntity(id: model.id);

//       expect(result.isRight(), true);
//       expect(result, equals(const Right<Failure, void>(null)));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.deleteEntity.failureTest] must return failure when deleteEntity fails with [Left(HiveFailure("Error"))] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.deleteEntity(id: model.id);

//       expect(result.isLeft(), true);
//       expect(result, equals(const Left<Failure, void>(HiveFailure('Error'))));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.deleteAllSelected] should delete from the box all the entities whose [ID] it has received and returns [Right(null)] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right(null));

//       final result = await dataSource.deleteAllSelected(keys);

//       expect(result.isRight(), true);
//       expect(result, equals(const Right<Failure, void>(null)));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.deleteAllSelected.failureTest] must return failure when delete fails with [Left(HiveFailure("Error"))] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.deleteAllSelected(keys);

//       expect(result.isLeft(), true);
//       expect(result, equals(const Left<Failure, void>(HiveFailure('Error'))));
//       verify(
//         () => mockHiveInit.operator<void>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByMainTaskIdsAndDateRange] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result =
//           await dataSource.getTaskPlanrsByMainTaskIdsAndDateRange(
//         mainTaskIds: keys,
//         startAt: startAt,
//         endAt: endAt,
//       );

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByMainTaskIdsAndDateRange.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result =
//           await dataSource.getTaskPlanrsByMainTaskIdsAndDateRange(
//         mainTaskIds: keys,
//         startAt: startAt,
//         endAt: endAt,
//       );

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByEndTime] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getTaskPlanrsByEndTime(endAt);

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByEndTime.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getTaskPlanrsByEndTime(endAt);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByMainTaskId] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getTaskPlanrsByMainTaskId('1');

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByMainTaskId.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getTaskPlanrsByMainTaskId('1');

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByRepetitionType] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource
//           .getTaskPlanrsByRepetitionType(RepetitionType.per);

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByRepetitionType.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource
//           .getTaskPlanrsByRepetitionType(RepetitionType.per);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsBySpecificTimes] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getTaskPlanrsBySpecificTimes([]);

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsBySpecificTimes.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getTaskPlanrsBySpecificTimes([]);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByStartTime] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getTaskPlanrsByStartTime(startAt);

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByStartTime.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getTaskPlanrsByStartTime(startAt);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByTimeUnit] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getTaskPlanrsByTimeUnit(TimeUnit.day);

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsByTimeUnit.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getTaskPlanrsByTimeUnit(TimeUnit.day);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsWithinDateRange] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getTaskPlanrsWithinDateRange(
//         startDate: startAt,
//         endDate: endAt,
//       );

//       expect(result.isRight(), true);
//       expect(
//         result,
//         equals(const Right<Failure, List<TaskPlanrHiveModel>>([])),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[taskPlanrsDataSource.getTaskPlanrsWithinDateRange.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getTaskPlanrsWithinDateRange(
//         startDate: startAt,
//         endDate: endAt,
//       );

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<TaskPlanrHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<TaskPlanrHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });
//   });
// }
