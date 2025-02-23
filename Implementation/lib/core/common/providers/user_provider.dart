import 'package:flutter/material.dart';
import 'package:zamaan/features/auth/data/models/local/local_user_model.dart';

/// A provider class for managing user data and notifying listeners of changes.
///
/// This class extends `ChangeNotifier` and provides methods to initialize and update
/// the user data. It also notifies listeners when the user data changes.
class UserProvider extends ChangeNotifier {
  // Private field to store the user data
  LocalUserModel? _user;

  /// Getter for the user data.
  ///
  /// This getter returns the current user data.
  LocalUserModel? get user => _user;

  /// Initializes the user data.
  ///
  /// This method sets the user data if it is different from the current user data.
  /// It does not notify listeners of changes.
  ///
  /// - Parameters:
  ///   - user: The `LocalUserModel` containing the user data to initialize.
  void initUser(LocalUserModel? user) {
    if (_user != user) {
      _user = user;
    }
  }

  /// Setter for the user data.
  ///
  /// This setter updates the user data if it is different from the current user data.
  /// It also notifies listeners of changes.
  ///
  /// - Parameters:
  ///   - user: The `LocalUserModel` containing the new user data.
  set user(LocalUserModel? user) {
    if (_user != user) {
      _user = user;
      // Notify listeners of changes after the current frame
      Future.delayed(Duration.zero, notifyListeners);
    }
  }
}
