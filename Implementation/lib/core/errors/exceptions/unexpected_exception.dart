import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/domain/enums/failure_type.dart';

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
