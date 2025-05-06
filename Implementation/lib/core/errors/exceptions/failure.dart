import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/core/utils/failure_location.dart'; // Import the getCurrentLocation function
import 'package:zamaan/domain/enums/failure_type.dart';

/// An abstract class representing a failure or error.
///
/// This class extends [Equatable] to allow for value comparison and implements
/// [Exception] to be used as an exception type.
abstract class Failure extends Equatable implements Exception {
  Failure({
    required this.message,
    DateTime? timestamp,
    String? errorLocation,
  })  : errorLocation = errorLocation ?? '',
        timestamp = timestamp ?? DateTime.timestamp();

  /// A message describing the failure.
  final String message;

  /// The location where the failure occurred.
  final String errorLocation;

  FailureType get failureType;

  // UTC timestamp for consistency
  final DateTime timestamp;

  @override
  List<Object?> get props => [message, errorLocation, timestamp];

  /// Provides a string representation of the [Failure].
  @override
  String toString() => kReleaseMode ? 'Error Message : $message' : _verboseToString();

  String _verboseToString() => '''
       ⚠️ Failure Details ⚠️
       Exception Type : ${failureType.toString().toSentenceCase()}
        - Error Message : $message
        - Error Location : $errorLocation
        - Time: ${timestamp.toIso8601String()}

      ''';
}
