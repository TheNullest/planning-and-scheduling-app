import 'package:flutter/material.dart';
import 'package:zamaan/presentation_shared/theme/app_dark_palette.dart';

class AppTheme {
  static OutlineInputBorder _border({
    Color borderColor = AppPallete.enableBorderColor,
  }) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: borderColor,
          width: 3,
        ),
      );
  static final ThemeData darkThemeMode = ThemeData.dark().copyWith(
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(AppPallete.backgroundColor),
      side: BorderSide.none,
    ),
    scaffoldBackgroundColor: AppPallete.gradient1,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.yellow,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppPallete.error,
      ),
      titleTextStyle: TextStyle(
        color: AppPallete.grey,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    primaryColor: AppPallete.gradient3,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(borderColor: AppPallete.focusedBorderColor),
      errorBorder: _border(borderColor: AppPallete.error),
    ),
  );
}
