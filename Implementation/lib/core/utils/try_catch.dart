// import 'dart:async';
// import 'dart:developer';

// import 'package:dartz/dartz.dart';
// import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
// import 'package:zamaan/core/errors/exceptions/custom_auth_exception.dart';
// import 'package:zamaan/core/errors/exceptions/failure.dart';
// import 'package:zamaan/core/errors/exceptions/local_exception.dart';
// import 'package:zamaan/core/errors/exceptions/remote_exception.dart';
// import 'package:zamaan/core/errors/exceptions/unexpected_exception.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/domain/enums/failure_type.dart';

/// Executes the given [action] and catches any exceptions that occur,
/// converting them into a [Failure] or a custom exception.
///
/// This function is designed for asynchronous actions and returns a
/// `ResultFuture<T>` (typically an alias for an Either type or similar abstraction)
/// containing either the successful result (wrapped in a [Right]) or a [Failure]
/// (wrapped in a [Left]).
///
/// Parameters:
/// - [action]: The asynchronous function to execute. It should return a `ResultFuture<T>`.
/// - [failureType]: An optional [FailureType] indicating the type of failure to emit
///   if an unhandled exception occurs.
/// - [customMessage]: An optional custom message that will be appended to the exception message.
/// - [onFinally]: An optional callback that will be executed after the [action] finishes,
///   regardless of whether an exception occurred.
///
/// Returns:
/// A `ResultFuture<T>` containing the result if successful or a [Failure] if an exception occurs.
///
/// Example:
/// ```dart
/// final result = await tryCatchEither<int>(
///   action: () async => await getData(),
///   failureType: FailureType.remote,
///   customMessage: 'Error geting data',
///   onFinally: () async => print('Cleanup complete'),
/// );
/// result.fold(
///   (failure) => print('Failure: $failure'),
///   (value) => print('Value: $value'),
/// );
/// ```
// EResultFuture<T> tryCatchEither<T>({
//   required EResultFuture<T> Function() action,
//   List<EResultFutureVoid Function()>? rollbackActions,
//   FailureType? failureType,
//   String? customMessage,
//   Future Function()? onFinally,
// }) async {
//   // Format the custom message if provided.
//   final formattedMessage = customMessage != null ? '\n ** $customMessage **' : '';

//   try {
//     // Execute the provided action and await its result.
//     final result = await action();
//     return result;
//   } on Failure catch (e) {
//     rollbackActions?.forEach((action) async => action());
//     return Left(e);
//   } on supabase.AuthException catch (e, stackTrace) {
//     rollbackActions?.forEach((action) async => action());
//     // Handle specific supabase authentication exceptions.
//     final exception = CustomAuthException(
//       stackTrace: stackTrace,
//       code: e.code,
//       statusCode: e.statusCode,
//       message: '${e.message} $formattedMessage',
//     );
//     return Left(exception);
//   } on supabase.PostgrestException catch (e, stackTrace) {
//     rollbackActions?.forEach((action) async => action());
//     // Handle specific supabase Postgrest exceptions.
//     final exception = RemoteException(
//       stackTrace: stackTrace,
//       code: e.code,
//       message: formattedMessage.isNotEmpty ? '${e.message} $formattedMessage' : e.message,
//     );
//     return Left(exception);
//   } on TimeoutException catch (e, stackTrace) {
//     rollbackActions?.forEach((action) async => action());
//     // Handle timeout exceptions.
//     final exceptionMessage =
//         formattedMessage.isNotEmpty ? 'Timeout: $e $formattedMessage' : 'Timeout: $e';
//     final exception = RemoteException(
//       stackTrace: stackTrace,
//       message: exceptionMessage,
//     );
//     return Left(exception);
//   } on FormatException catch (e, stackTrace) {
//     rollbackActions?.forEach((action) async => action());
//     // Handle format exceptions.
//     final exceptionMessage =
//         formattedMessage.isNotEmpty ? 'Format error: $e $formattedMessage' : 'Format error: $e';
//     final exception = LocalException(
//       message: exceptionMessage,
//       stackTrace: stackTrace,
//     );
//     return Left(exception);
//   } on Exception catch (e, stackTrace) {
//     log(customMessage!);
//     rollbackActions?.forEach((action) async => action());
//     // Handle any other exceptions.
//     final exceptionMessage = formattedMessage.isNotEmpty ? '$e $formattedMessage' : e.toString();
//     final exception = _mapFailureTypeToException(failureType, exceptionMessage, stackTrace);
//     return Left(exception);
//   } finally {
//     // Execute the onFinally callback if provided.
//     if (onFinally != null) await onFinally();
//   }
// }

/// Executes a synchronous [action] and catches any exceptions that occur,
/// rethrowing them as a [LocalException] with additional context.
///
/// This function is designed for synchronous actions and returns the result of the [action]
/// if it completes successfully. If an exception is thrown, it catches that exception,
/// constructs an enhanced error message (which includes an optional custom message),
/// and then throws a [LocalException] containing the original error message and
/// the current location.
///
/// Parameters:
/// - [action]: A callback function that returns a value of type [T].
/// - [failureType]: An optional [FailureType] indicating the type of failure if an exception occurs.
/// - [customMessage]: An optional custom message to include in the exception message.
/// - [onFinally]: An optional callback that is executed after the [action] completes,
///   regardless of whether an exception occurred.
///
/// Returns:
/// The result of the [action] if no exception is thrown.
///
/// Throws:
/// A [LocalException] with a message containing the original exception's message and an optional custom message.
///
/// Example:
/// ```dart
/// try {
///   final value = tryCatchSimple<int>(
///     action: () => processValue(),
///     customMessage: 'Error processing value',
///     onFinally: () => print('Process complete'),
///   );
///   print('Processed value: $value');
/// } catch (e) {
///   print('Failure: $e');
/// }
/// ```
// T tryCatchSimple<T>({
//   required T Function() action,
//   List<FutureVoid Function()>? rollbackActions,
//   FailureType? failureType,
//   String? customMessage,
//   void Function()? onFinally,
// }) {
//   try {
//     // Execute the action callback and return its result.
//     return action();
//   } on Exception catch (e, stackTrace) {
//     rollbackActions?.forEach((action) async => action());
//     // Construct the exception message with the optional custom message.
//     final exceptionMessage =
//         (customMessage != null ? '\n ** $customMessage ** ' : ' ') + e.toString();

//     // Throw a LocalException with the constructed message and current location.
//     throw LocalException(
//       message: exceptionMessage,
//       stackTrace: stackTrace,
//     );
//   } finally {
//     // Execute the onFinally callback if provided.
//     if (onFinally != null) onFinally();
//   }
// }

/// Maps a [FailureType] (if provided) along with a [message] and [location],
/// to an appropriate [Failure] instance.
///
/// This function returns:
/// - A [LocalException] if [failureType] is [FailureType.local],
/// - A [RemoteException] if [failureType] is [FailureType.remote],
/// - An [UnexpectedException] for any other value or if [failureType] is null.
///
/// Parameters:
/// - [failureType]: The type of failure that occurred (optional).
/// - [message]: A message describing the failure.
/// - [location]: A string representing the location where the failure occurred.
///
/// Returns:
/// A [Failure] instance corresponding to the given [failureType].
///
/// Example:
/// ```dart
/// final failure = _mapFailureTypeToException(FailureType.remote, 'Error occurred', 'main.dart:42');
/// print(failure);
/// ```
// Failure _mapFailureTypeToException(
//   FailureType? failureType,
//   String message,
//   StackTrace stackTrace,
// ) {
//   switch (failureType) {
//     case FailureType.local:
//       // Return a LocalException for local failures.
//       return LocalException(
//         message: message,
//         stackTrace: stackTrace,
//       );
//     case FailureType.remote:
//       // Return a RemoteException for remote failures.
//       return RemoteException(
//         message: message,
//         stackTrace: stackTrace,
//       );
//     default:
//       // Return an UnexpectedException for any other failure types or if failureType is null.
//       return UnexpectedException(
//         message: message,
//         stackTrace: stackTrace,
//       );
//   }
// }
