import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';

/// A class representing an unexpected failure or error.
class UnexpectedException extends Failure {
  UnexpectedException({
    required super.message,
    super.errorLocation,
    super.timestamp,
  });

  @override
  FailureType get failureType => FailureType.unexpected;
}
