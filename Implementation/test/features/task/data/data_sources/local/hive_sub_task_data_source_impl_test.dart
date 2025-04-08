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
// import 'package:zamaan/features/sub_task/data/models/sub_task_local_model.dart';
// import 'package:zamaan/features/sub_task/data/sources/hive_sub_task_data_source_impl.dart';

// class MockHiveInit extends Mock implements HiveServices<SubTaskHiveModel> {}

// void main() {
//   late HiveSubTaskDataSourceImpl dataSource;
//   late HiveServices<SubTaskHiveModel> mockHiveInit;
//   late SubTaskHiveModel model;
//   late List<String> keys;
//   const boxName = HiveBoxConstants.subTasksBox;
//   setUp(() {
//     mockHiveInit = MockHiveInit();
//     dataSource = HiveSubTaskDataSourceImpl(hiveBox: mockHiveInit);
//     model = SubTaskHiveModel.empty();
//     keys = [
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//       uuidGenerator(),
//     ];
//   });

//   group('subTaskDataSource', () {
//     test(
//         '[subTaskDataSource.createEntity] must save entity to the box and returns [Right(null)] data',
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
//         '[subTaskDataSource.createEntity.failureTest] must return failure when createEntity fails with [Left(HiveFailure("Error"))] data',
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
//         '[subTaskDataSource.getEntities] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getEntities();

//       expect(result.isRight(), true);
//       expect(result, equals(const Right<Failure, List<SubTaskHiveModel>>([])));
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getEntities.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getEntities();

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<SubTaskHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getEntity] should retrieve entity by id from the box and returns [Right(SubTaskHiveModel)] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<SubTaskHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => Right(model));

//       final result = await dataSource.getEntity(id: model.id);

//       expect(result.isRight(), true);
//       expect(result, equals(Right<Failure, SubTaskHiveModel>(model)));
//       verify(
//         () => mockHiveInit.operator<SubTaskHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getEntity.failureTest] must return failure when getEntity fails with [Left(HiveFailure("Error"))] data',
//         () async {
//       when(
//         () => mockHiveInit.operator<SubTaskHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getEntity(id: model.id);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(const Left<Failure, SubTaskHiveModel>(HiveFailure('Error'))),
//       );
//       verify(
//         () => mockHiveInit.operator<SubTaskHiveModel>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once with the correct ID
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.updateEntity] must update entity in the box and returns [Right(null)] data',
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
//         '[subTaskDataSource.updateEntity.failureTest] must return failure when updateEntity fails with [Left(HiveFailure("Error"))] data',
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
//         '[subTaskDataSource.deleteEntity] must delete entity by id from the box and returns [Right(null)] data',
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
//         '[subTaskDataSource.deleteEntity.failureTest] must return failure when deleteEntity fails with [Left(HiveFailure("Error"))] data',
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
//         '[subTaskDataSource.deleteAllSelected] should delete from the box all the entities whose [ID] it has received and returns [Right(null)] data',
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
//         '[subTaskDataSource.deleteAllSelected.failureTest] must return failure when delete fails with [Left(HiveFailure("Error"))] data',
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
//         '[subTaskDataSource.getSubTasksByPriority] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getSubTasksByPriority(Priority.high);

//       expect(result.isRight(), true);
//       expect(result, equals(const Right<Failure, List<SubTaskHiveModel>>([])));
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getSubTasksByPriority.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getSubTasksByPriority(Priority.high);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<SubTaskHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getSubTasksByStatus] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getSubTasksByStatus(Status.notStarted);

//       expect(result.isRight(), true);
//       expect(result, equals(const Right<Failure, List<SubTaskHiveModel>>([])));
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getSubTasksByStatus.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getSubTasksByStatus(Status.notStarted);

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<SubTaskHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getSubTasksByMainTaskId] should retrieve all entities from the box [Right([])] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Right([]));

//       final result = await dataSource.getSubTasksByMainTaskId('1');

//       expect(result.isRight(), true);
//       expect(result, equals(const Right<Failure, List<SubTaskHiveModel>>([])));
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });

//     test(
//         '[subTaskDataSource.getSubTasksByMainTaskId.failureTest] must return failure when getEntities fails with [Left(HiveFailure("Error"))] data ',
//         () async {
//       when(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).thenAnswer((_) async => const Left(HiveFailure('Error')));

//       final result = await dataSource.getSubTasksByMainTaskId('1');

//       expect(result.isLeft(), true);
//       expect(
//         result,
//         equals(
//           const Left<Failure, List<SubTaskHiveModel>>(
//             HiveFailure('Error'),
//           ),
//         ),
//       );
//       verify(
//         () => mockHiveInit.operator<List<SubTaskHiveModel>>(
//           job: any(named: 'job'),
//           boxName: boxName,
//         ),
//       ).called(1); // Verify that get was only called once
//       verifyNoMoreInteractions(mockHiveInit);
//     });
//   });
// }
