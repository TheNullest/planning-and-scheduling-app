import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:zamaan/core/utils/failure_location.dart';
// Import the getCurrentLocation function
import 'package:zamaan/domain/enums/failure_type.dart';

/// An abstract class representing a failure or error.
///
/// This class extends [Equatable] to allow for value comparison and implements
/// [Exception] to be used as an exception type.
abstract class Failure extends Equatable implements Exception {
  Failure({
    required this.message,
    required this.stackTrace,
    DateTime? timestamp,
  }) : timestamp = timestamp ?? DateTime.timestamp();

  /// A message describing the failure.
  final String message;

  /// The location where the failure occurred.
  final StackTrace stackTrace;

  FailureType get failureType;

  // UTC timestamp for consistency
  final DateTime timestamp;

  String get errorLocation => getFailureLocation(stackTrace);

  @override
  List<Object?> get props => [message, stackTrace, timestamp];

  /// Provides a string representation of the [Failure].
  @override
  String toString() => kReleaseMode ? 'Error Message : $message' : _verboseToString();

  String _verboseToString() => '''
       ⚠️ Failure Details ⚠️
       Exception Type : ${failureType.name}
        - Error Message : $message
        - Error Location : $errorLocation
        - Time: ${timestamp.toIso8601String()}

      ''';
}
