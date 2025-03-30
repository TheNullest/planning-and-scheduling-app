// ignore_for_file: no_default_cases

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/custom_auth_exception.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/errors/exceptions/local_exception.dart';
import 'package:zamaan/core/errors/exceptions/remote_exception.dart';
import 'package:zamaan/core/errors/exceptions/unexpected_exception.dart';
import 'package:zamaan/core/utils/current_location.dart';
import 'package:zamaan/core/utils/typedef.dart';

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
///   action: () async => await fetchData(),
///   failureType: FailureType.remote,
///   customMessage: 'Error fetching data',
///   onFinally: () async => print('Cleanup complete'),
/// );
/// result.fold(
///   (failure) => print('Failure: $failure'),
///   (value) => print('Value: $value'),
/// );
/// ```
EResultFuture<T> tryCatchEither<T>({
  required EResultFuture<T> Function() action,
  FailureType? failureType,
  String? customMessage,
  Future Function()? onFinally,
}) async {
  // Get the current location for logging or debugging purposes.
  final location = getCurrentLocation();

  // Format the custom message if provided.
  final formattedMessage =
      customMessage != null ? '\n ** $customMessage **' : '';

  try {
    // Execute the provided action and await its result.
    final result = await action();
    return result;
  } on Failure catch (e) {
    return Left(e);
  } on supabase.AuthException catch (e) {
    // Handle specific supabase authentication exceptions.
    final exception = CustomAuthException(
      errorLocation: location,
      code: e.code,
      statusCode: e.statusCode,
      message: '${e.message} $formattedMessage',
    );
    return Left(exception);
  } on supabase.PostgrestException catch (e) {
    // Handle specific supabase Postgrest exceptions.
    final exception = RemoteException(
      errorLocation: location,
      code: e.code,
      message: formattedMessage.isNotEmpty
          ? '${e.message} $formattedMessage'
          : e.message,
    );
    return Left(exception);
  } on TimeoutException catch (e) {
    // Handle timeout exceptions.
    final exceptionMessage = formattedMessage.isNotEmpty
        ? 'Timeout: $e $formattedMessage'
        : 'Timeout: $e';
    final exception = RemoteException(
      errorLocation: location,
      message: exceptionMessage,
    );
    return Left(exception);
  } on FormatException catch (e) {
    // Handle format exceptions.
    final exceptionMessage = formattedMessage.isNotEmpty
        ? 'Format error: $e $formattedMessage'
        : 'Format error: $e';
    final exception = LocalException(
      message: exceptionMessage,
      errorLocation: location,
    );
    return Left(exception);
  } catch (e) {
    // Handle any other exceptions.
    final exceptionMessage =
        formattedMessage.isNotEmpty ? '$e $formattedMessage' : e.toString();
    final exception =
        _mapFailureTypeToException(failureType, exceptionMessage, location);
    return Left(exception);
  } finally {
    // Execute the onFinally callback if provided.
    if (onFinally != null) await onFinally();
  }
}

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
T tryCatchSimple<T>({
  required T Function() action,
  FailureType? failureType,
  String? customMessage,
  void Function()? onFinally,
}) {
  try {
    // Execute the action callback and return its result.
    return action();
  } catch (e) {
    // Construct the exception message with the optional custom message.
    final exceptionMessage =
        (customMessage != null ? '\n ** $customMessage ** ' : ' ') +
            e.toString();

    // Throw a LocalException with the constructed message and current location.
    throw LocalException(
      message: exceptionMessage,
      errorLocation: getCurrentLocation(),
    );
  } finally {
    // Execute the onFinally callback if provided.
    if (onFinally != null) onFinally();
  }
}

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
Failure _mapFailureTypeToException(
  FailureType? failureType,
  String message,
  String location,
) {
  switch (failureType) {
    case FailureType.local:
      // Return a LocalException for local failures.
      return LocalException(
        message: message,
        errorLocation: location,
      );
    case FailureType.remote:
      // Return a RemoteException for remote failures.
      return RemoteException(
        message: message,
        errorLocation: location,
      );
    default:
      // Return an UnexpectedException for any other failure types or if failureType is null.
      return UnexpectedException(
        message: message,
        errorLocation: location,
      );
  }
}
