import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/domain/enums/failure_type.dart';

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
