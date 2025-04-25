import 'package:zamaan/core/errors/exceptions/remote_exception.dart';
import 'package:zamaan/domain/enums/failure_type.dart';

/// A class representing an authentication failure or error.
class CustomAuthException extends RemoteException {
  CustomAuthException({
    required super.message,
    super.errorLocation,
    super.code,
    super.statusCode,
    super.requestedUrl,
    super.timestamp,
  });

  @override
  FailureType get failureType => FailureType.authentication;
}
