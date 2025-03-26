import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';

class ValidationExceptions extends Failure {
  ValidationExceptions({
    required super.message,
    required this.exceptions,
    super.timestamp,
  });
  final List<String> exceptions;

  @override
  FailureType get failureType => FailureType.validation;

  /// Returns a list of properties to be used for value comparison.
  @override
  List<Object?> get props => [
        ...super.props,
        exceptions,
      ];
}
