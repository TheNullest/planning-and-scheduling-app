import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
import 'package:zamaan/core/errors/exceptions/custom_auth_exception.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/errors/exceptions/hive_exception.dart';
import 'package:zamaan/core/errors/exceptions/local_exception.dart';
import 'package:zamaan/core/errors/exceptions/remote_exception.dart';
import 'package:zamaan/core/errors/exceptions/unexpected_exception.dart';
import 'package:zamaan/core/utils/typedef.dart';

EResultFuture<T> failureTypeDetectorLeft<T>({
  required dynamic e,
  required StackTrace stackTrace,
  List<EResultFutureVoid Function()>? rollbackActions,
  String? customMessage,
}) async {
  final formattedMessage = customMessage != null ? '\n ** $customMessage **' : '';

  // Await rollback actions if any
  if (rollbackActions != null) {
    for (final action in rollbackActions) {
      await action();
    }
  }

  if (e is Failure) {
    return Left(e);
  } else if (e is supabase.AuthException) {
    final exception = CustomAuthException(
      stackTrace: stackTrace,
      code: e.code,
      statusCode: e.statusCode,
      message: '${e.message} $formattedMessage',
    );
    return Left(exception);
  } else if (e is supabase.PostgrestException) {
    final exception = RemoteException(
      stackTrace: stackTrace,
      code: e.code,
      message: '${e.message} $formattedMessage',
    );
    return Left(exception);
  } else if (e is FormatException) {
    final exception = LocalException(
      message: '${e.message} $formattedMessage',
      stackTrace: stackTrace,
    );
    return Left(exception);
  } else if (e is HiveError) {
    final exception =
        HiveException(message: '${e.message} $formattedMessage', stackTrace: stackTrace);
    return Left(exception);
  } else {
    final exception =
        UnexpectedException(message: '${e.message} $formattedMessage', stackTrace: stackTrace);
    return Left(exception);
  }
}

Exception failureTypeDetector({
  required dynamic e,
  required StackTrace stackTrace,
  List<void Function()>? rollbackActions,
  String? customMessage,
}) {
  rollbackActions?.forEach((action) async => action());
  final formattedMessage = customMessage != null ? '\n ** $customMessage **' : '';
  if (e is Failure) {
    throw e;
  } else if (e is supabase.AuthException) {
    // Handle specific supabase authentication exceptions.
    final exception = CustomAuthException(
      stackTrace: stackTrace,
      code: e.code,
      statusCode: e.statusCode,
      message: '${e.message} $formattedMessage',
    );
    throw exception;
  } else if (e is supabase.PostgrestException) {
    // Handle specific supabase Postgrest exceptions.
    final exception = RemoteException(
      stackTrace: stackTrace,
      code: e.code,
      message: formattedMessage.isNotEmpty ? '${e.message} $formattedMessage' : e.message,
    );
    throw exception;
  } else if (e is FormatException) {
    // Handle format exceptions.
    final exceptionMessage =
        formattedMessage.isNotEmpty ? 'Format error: $e $formattedMessage' : 'Format error: $e';
    final exception = LocalException(
      message: exceptionMessage,
      stackTrace: stackTrace,
    );
    throw exception;
  } else {
    // Handle any other exceptions.
    final exceptionMessage = formattedMessage.isNotEmpty ? '$e $formattedMessage' : e.toString();
    final exception = UnexpectedException(message: exceptionMessage, stackTrace: stackTrace);
    throw exception;
  }
}
