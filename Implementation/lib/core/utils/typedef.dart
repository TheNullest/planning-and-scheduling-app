import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';

// -----------------------------------------------------------------------------
// Result typedefs
// -----------------------------------------------------------------------------

/// Represents a monadic result type that can either be a [Failure]
/// or a successful value of type [T].
///
/// This is typically used for operations that can fail, providing
/// type-safe error handling throughout the application.
///
/// Example:
/// ```dart
/// EResult<User> getUser() {
///   try {
///     return Right(User());
///   } catch (e) {
///     return Left(Failure(message: 'User not found'));
///   }
/// }
/// ```
typedef EResult<T> = Either<Failure, T>;

/// Represents an asynchronous operation that returns an [EResult].
///
/// Used for async operations that need to return either a successful
/// value of type [T] or a [Failure]. Common for API calls and
/// repository operations.
///
/// Example:
/// ```dart
/// EResultFuture<User> getUser() async {
///   // Implementation
/// }
/// ```
typedef EResultFuture<T> = Future<EResult<T>>;

/// Specialized version of [EResultFuture] for operations that
/// don't return a value but still need error handling.
///
/// Used for void-returning operations where success/failure
/// state is important.
///
/// Example:
/// ```dart
/// EResultFutureVoid savePreferences() async {
///   // Implementation
/// }
/// ```
typedef EResultFutureVoid = EResultFuture<void>;

/// Represents a fire-and-forget asynchronous operation with no return value.
///
/// Used when only completion status matters, not success/failure state.
/// Prefer [EResultFutureVoid] when error handling is required.
///
/// Example:
/// ```dart
/// FutureVoid logEvent() async {
///   // Analytics implementation
/// }
/// ```
typedef FutureVoid = Future<void>;

// -----------------------------------------------------------------------------
// Data typedefs
// -----------------------------------------------------------------------------
/// Standardized format for representing dynamic data structures.
///
/// Typically used for:
/// - JSON serialization/deserialization
/// - Database operations
/// - API request/response bodies
///
/// Example:
/// ```dart
/// DataMap userData = {
///   'id': 123,
///   'name': 'John Doe',
///   'email': 'john@example.com'
/// };
/// ```
typedef DataMap<T> = Map<String, T>;
