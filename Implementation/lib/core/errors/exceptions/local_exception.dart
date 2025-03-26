import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';

/// A class representing a local failure or error.
class LocalException extends Failure {
  LocalException({
    required super.message,
    super.errorLocation,
    super.timestamp,
  });

  @override
  FailureType get failureType => FailureType.local;
}
