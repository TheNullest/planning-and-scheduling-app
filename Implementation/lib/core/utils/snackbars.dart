import 'package:flutter/material.dart';

/// Displays a SnackBar with the given content, duration, and optional action.
///
/// This function uses the `ScaffoldMessenger` to show a SnackBar with the provided content,
/// duration, background color, and text style. It first hides any currently displayed SnackBar
/// before showing the new one. An optional action button can be added to close the SnackBar.
///
/// - Parameters:
///   - context: The `BuildContext` used to find the `ScaffoldMessenger`.
///   - content: The text content to display in the SnackBar.
///   - duration: The duration for which the SnackBar should be displayed. Defaults to 10 seconds.
///   - backgroundColor: The background color of the SnackBar. Defaults to `Colors.black`.
///   - textStyle: The text style of the SnackBar content. Defaults to white text color.
///   - actionLabel: The label for the action button. Defaults to 'Close'.
///   - actionOnPressed: The callback function to execute when the action button is pressed. Defaults to hiding the SnackBar.
void showSnackBar(
  BuildContext context,
  String content, {
  Duration duration =
      const Duration(seconds: 10), // Default duration of 10 seconds
  Color backgroundColor = Colors.black, // Default background color is black
  TextStyle textStyle =
      const TextStyle(color: Colors.white), // Default text style is white color
  String actionLabel = 'Close', // Default action button label is 'Close'
  VoidCallback? actionOnPressed, // Optional callback for action button press
}) {
  // Access the ScaffoldMessenger for the given context
  ScaffoldMessenger.of(context)
    // Hide any currently displayed SnackBar
    ..hideCurrentSnackBar()
    // Show a new SnackBar with the provided content and duration
    ..showSnackBar(
      SnackBar(
        backgroundColor:
            backgroundColor, // Set the background color of the SnackBar
        content: Text(
          content,
          style: textStyle, // Set the text style of the SnackBar content
        ),
        duration:
            duration, // Set the duration for which the SnackBar is displayed
        action: SnackBarAction(
          label: actionLabel, // Set the label for the action button
          textColor: textStyle.color, // Set the text color of the action button
          onPressed:
              actionOnPressed ?? // Set the callback for the action button press
                  () {
                    // Default action: hide the SnackBar
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
        ),
      ),
    );
}
