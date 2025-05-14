import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/domain/enums/failure_type.dart';

/// A class representing a local failure or error.
class HiveException extends Failure {
  HiveException({
    required super.message,
    required super.stackTrace,
    super.timestamp,
  });

  @override
  FailureType get failureType => FailureType.local;
}
