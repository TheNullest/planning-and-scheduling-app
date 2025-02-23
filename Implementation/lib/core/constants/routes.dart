// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:zamaan/features/auth/presentation/views/sign_in_view.dart';
import 'package:zamaan/features/auth/presentation/views/sign_up_view.dart';
import 'package:zamaan/features/settings/presentation/views/settings_view.dart';
import 'package:zamaan/features/shell/presentation/views/shell_view.dart';

class Routes {
  Routes._();

// String routes
  static const String signUpStringRoute = '/sign-up';
  static const String signInStringRoute = '/sign-in';
  static const String settingsStringRoute = '/settings';
  static const String shellStringRoute = '/shell';

// Material routes
  static MaterialPageRoute signUpMaterialRoute(BuildContext context) =>
      _materialPageRoute(context, const SignUpView());

  static MaterialPageRoute signInMaterialRoute(BuildContext context) =>
      _materialPageRoute(context, const SignInView());

  static MaterialPageRoute settingsMaterialRoute(BuildContext context) =>
      _materialPageRoute(context, const SettingsView());

  static MaterialPageRoute shellMaterialRoute(BuildContext context) =>
      _materialPageRoute(context, const ShellView());

  static MaterialPageRoute<T> _materialPageRoute<T>(
    BuildContext context,
    Widget view,
  ) =>
      MaterialPageRoute(builder: (context) => view);
}
