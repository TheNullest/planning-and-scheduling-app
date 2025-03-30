import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/platform/directory_wrapper.dart';
import 'package:zamaan/core/platform/path_provider_wrapper.dart';
import 'package:zamaan/core/platform/platform_wrapper.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/services/hive/hive_wrapper.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/main_task_hive_model.dart';

class MockHiveWrapper extends Mock implements HiveWrapper {}

class MockPlatformWrapper extends Mock implements PlatformWrapper {}

class MockPathProviderWrapper extends Mock implements PathProviderWrapper {}

class MockDirectoryrWrapper extends Mock implements DirectoryWrapper {}

class MockBox<T> extends Mock implements Box<T> {}

void main() {
  late MockHiveWrapper mockHive;
  late MockPlatformWrapper mockPlatform;
  late MockPathProviderWrapper mockPathProvider;
  late MockDirectoryrWrapper mockDirectory;
  late MockBox<UserHiveModel> mockBox;
  late HiveServices<UserHiveModel> hiveServices;
  const boxName = HiveBoxConstants.usersBox;
  setUp(() {
    mockHive = MockHiveWrapper();
    mockPathProvider = MockPathProviderWrapper();
    mockPlatform = MockPlatformWrapper();
    mockDirectory = MockDirectoryrWrapper();
    mockBox = MockBox<UserHiveModel>();
    hiveServices = HiveServices<UserHiveModel>(
      hive: mockHive,
      pathProvider: mockPathProvider,
      platform: mockPlatform,
      directory: mockDirectory,
    );
  });

  test(
      'HiveServices().init() uses windows path when platfrom.isWindows is true',
      () async {
    // Arrange: Stub the path property
    when(() => mockDirectory.path)
        .thenReturn(r'E:\Flutter.Dart\HiveFiles\test');

    // Arrange: Stub `isWindows` to return true
    when(() => mockPlatform.isWindows).thenReturn(true);

    // Arrange: Simulate that the directory exists.
    when(() => mockDirectory.existsSync()).thenReturn(true);

    // Arrange: When the path provider is asked, return an actual Directory.
    when(() => mockPathProvider.getApplicationDocumentsDirectory())
        .thenAnswer((_) async => Directory(r'E:\Flutter.Dart\HiveFiles\test'));

    // Arrange: Stub Hive initialization.
    when(() => mockHive.initFlutter(any())).thenAnswer((_) async {});

    // Arrange: Make sure the adapters behave as expected
    when(() => mockHive.isAdapterRegistered(any())).thenReturn(false);

    // Act: Call the `init` method
    await hiveServices.init();

    // Assert: Verify that the correct platform-dependent path was used
    verify(() => mockHive.isAdapterRegistered(any())).called(9);
    verify(() => mockHive.registerAdapter(UserHiveModelAdapter())).called(1);
    verify(() => mockHive.registerAdapter(MainTaskHiveModelAdapter()))
        .called(1);
    verify(() => mockHive.initFlutter(r'E:\Flutter.Dart\HiveFiles\test'))
        .called(1);
  });

  test('operator method opens box, executes job, and closes the box', () async {
    // Arrange
    // Stub isBoxOpen to return false so that openBox() is called.
    when(() => mockHive.isBoxOpen(boxName)).thenReturn(false);
    // Stub openBox to return our mockBox.
    when(() => mockHive.openBox<UserHiveModel>(boxName))
        .thenAnswer((_) async => mockBox);
    // When the box() is called, return our mockBox.
    when(() => mockHive.box<UserHiveModel>(boxName)).thenReturn(mockBox);
    // Stub the box's isOpen property.
    when(() => mockBox.isOpen).thenReturn(true);
    // Stub closeAllBoxes so it completes successfully.
    when(() => mockHive.closeAllBoxes()).thenAnswer((_) async {});
    // Define a job that returns the integer 42.
    Future<int> job(Box<UserHiveModel> box) async => 42;
    // Act
    final operatorResult = await hiveServices.operator<int>(
      boxName: boxName,
      job: job,
    );

    final isBoxOpenResult = mockHive.isBoxOpen(boxName);
    // Assert
    // Assert: Verify that the result is Right(42).
    operatorResult.fold(
      (failure) => fail('Expected success, but got failure: $failure'),
      (value) => expect(value, 42),
    );

    expect(operatorResult, isA<Right<Failure, int>>());
    expect(operatorResult as Right, operatorResult);
    expect(isBoxOpenResult, false);

    verifyInOrder([
      () => mockHive.isBoxOpen(boxName),
      () => mockHive.openBox<UserHiveModel>(boxName),
      () => mockHive.box<UserHiveModel>(boxName),
      () => mockBox.isOpen,
      () => mockHive.closeAllBoxes(),
    ]);
    verify(() => mockHive.closeAllBoxes()).called(1); // Action + onFinally
  });
}
