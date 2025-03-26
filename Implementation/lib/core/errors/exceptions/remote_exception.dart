import 'package:flutter/foundation.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';

/// A class representing a remote failure or error.
class RemoteException extends Failure {
  RemoteException({
    required super.message,
    super.errorLocation,
    this.code,
    this.statusCode,
    this.requestedUrl,
    super.timestamp,
  });

  /// An optional code representing the error.
  final String? code;

  /// An optional status code representing the error.
  final String? statusCode;

  final Uri? requestedUrl;

  @override
  FailureType get failureType => FailureType.remote;

  /// Returns a list of properties to be used for value comparison.
  @override
  List<Object?> get props => [
        ...super.props,
        code,
        statusCode,
      ];

  /// Provides a string representation of the [RemoteException].
  @override
  String toString() => kReleaseMode
      ? super.toString()
      : '${super.toString()}\n - Code: $code\n - Status Code: $statusCode\n - Requested URL: $requestedUrl';
}
