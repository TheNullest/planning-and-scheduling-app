import 'package:dartz/dartz.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';

/// A utility function that folds an `Either` type.
///
/// If the `Either` is a `Left`, it throws the contained `Failure`.
/// If the `Either` is a `Right`, it returns the contained value.
///
/// - Parameter either: The `Either` type containing a `Failure` or a value of type `T`.
/// - Returns: The value of type `T` if the `Either` is a `Right`.
/// - Throws: The contained `Failure` if the `Either` is a `Left`.
T foldEitherRight<T>(Either<Failure, dynamic> either) {
  return either.fold(
    (left) => throw left,
    (right) => right as T,
  );
}

T foldEitherJob<T>(Either<Failure, dynamic> either, Future Function()? right) {
  return either.fold(
    (left) => throw left,
    (right) => right as T,
  );
}
