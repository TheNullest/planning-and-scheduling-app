import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/errors/exceptions/local_exception.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/auth/data/sources/local/local_auth_data_source_impl.dart';

class MockHiveServices extends Mock implements HiveBoxRunner<UserHiveModel> {}

void main() {
  late LocalAuthDataSourceImpl dataSource;
  late MockHiveServices mockHiveServices;
  late UserHiveModel testUser;

  setUp(() {
    mockHiveServices = MockHiveServices();
    dataSource = LocalAuthDataSourceImpl(hiveBox: mockHiveServices);
    testUser = UserHiveModel.empty();
  });

  group('LocalAuthDataSourceImpl', () {
    test('getCurrentUser returns user on success', () async {
      when(
        () => mockHiveServices.runBoxOperation<UserHiveModel>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).thenAnswer((_) async => Right(testUser));

      final result = await dataSource.getCurrentUser();

      expect(result, equals(Right(testUser)));
      verify(
        () => mockHiveServices.runBoxOperation<UserHiveModel>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).called(1);
    });

    test('getCurrentUser throws exception on failure', () async {
      when(
        () => mockHiveServices.runBoxOperation<UserHiveModel>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).thenAnswer((_) async => Left(LocalException(message: 'Error')));

      expect(() => dataSource.getCurrentUser(), throwsA(isA<LocalException>()));
      verify(
        () => mockHiveServices.runBoxOperation<Either<Failure, UserHiveModel>>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).called(1);
    });

    test('storeCurrentUser stores user on success', () async {
      when(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).thenAnswer((_) async => const Right(null));

      final result = await dataSource.storeCurrentUser(testUser);

      expect(result, equals(Future.value()));
      verify(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).called(1);
    });

    test('storeCurrentUser throws exception if user exists', () async {
      when(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).thenThrow(Exception('testUser already exists in database'));

      expect(
        () => dataSource.storeCurrentUser(testUser),
        throwsA(isA<Exception>()),
      );
      verify(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).called(1);
    });

    test('signOut clears user data on success', () async {
      when(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).thenAnswer((_) async => const Right(null));

      final result = await dataSource.signOut();

      expect(result, equals(const Right(null)));
      verify(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).called(1);
    });

    test('signOut throws exception on failure', () async {
      when(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).thenAnswer((_) async => Left(LocalException(message: 'Error')));

      expect(() => dataSource.signOut(), throwsA(isA<LocalException>()));
      verify(
        () => mockHiveServices.runBoxOperation<void>(
          job: any(named: 'job'),
          boxName: HiveBoxConstants.usersBox,
        ),
      ).called(1);
    });
  });
}
