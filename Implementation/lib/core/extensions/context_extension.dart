import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/providers/user_provider.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';

/// Extension on BuildContext to provide convenient access to common properties and methods.
///
/// This extension adds several utility getters to the `BuildContext` class, making it easier
/// to access common properties such as theme, media query, and user information.
extension ContextExt on BuildContext {
  /// Retrieves the current ThemeData from the context.
  ///
  /// This getter provides easy access to the current theme data, which can be used to
  /// style widgets according to the app's theme.
  ThemeData get theme => Theme.of(this);

  /// Retrieves the current MediaQueryData from the context.
  ///
  /// This getter provides access to the media query data, which contains information
  /// about the size and orientation of the screen, as well as other display properties.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Retrieves the size of the current media query.
  ///
  /// This getter returns the size of the screen, which can be useful for responsive
  /// layout calculations.
  Size get size => mediaQuery.size;

  /// Retrieves the width of the current media query.
  ///
  /// This getter returns the width of the screen, which can be useful for responsive
  /// layout calculations.
  double get mediaQueryWidth => size.width;

  /// Retrieves the height of the current media query.
  ///
  /// This getter returns the height of the screen, which can be useful for responsive
  /// layout calculations.
  double get mediaQueryHeight => size.height;

  /// Retrieves the UserProvider from the context.
  ///
  /// This getter provides access to the `UserProvider`, which can be used to manage
  /// and access user-related data within the app.
  UserProvider get userProvider => read<UserProvider>();

  /// Retrieves the current user from the UserProvider.
  ///
  /// This getter returns the current user information from the `UserProvider`, which
  /// can be used to display user-specific data or perform user-specific actions.
  UserHiveModel? get currentUser => userProvider.user;
}
