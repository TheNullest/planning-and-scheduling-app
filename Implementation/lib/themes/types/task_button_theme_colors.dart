import 'package:flutter/material.dart';

class TaskButtonThemeColors {
  final Color taskButtonForegroundColor;
  final Color taskButtonBackgroundColor;
  final Color taskButtonHoverdBackgroundColor;
  final Color taskButtonActivatedBackgroundColor;
  final Color taskButtonDoneBackgroundColor;
  final Color taskButtonBorderColor;

  TaskButtonThemeColors(
      {required this.taskButtonForegroundColor,
      required this.taskButtonBackgroundColor,
      required this.taskButtonHoverdBackgroundColor,
      required this.taskButtonActivatedBackgroundColor,
      required this.taskButtonDoneBackgroundColor,
      required this.taskButtonBorderColor});

  TaskButtonThemeColors copyWith({
    Color? taskButtonForegroundColor,
    Color? taskButtonBackgroundColor,
    Color? taskButtonHoverdBackgroundColor,
    Color? taskButtonActivatedBackgroundColor,
    Color? taskButtonDoneBackgroundColor,
    Color? taskButtonBorderColor,
  }) =>
      TaskButtonThemeColors(
        taskButtonForegroundColor:
            taskButtonForegroundColor ?? this.taskButtonForegroundColor,
        taskButtonBackgroundColor:
            taskButtonBackgroundColor ?? this.taskButtonForegroundColor,
        taskButtonHoverdBackgroundColor:
            taskButtonHoverdBackgroundColor ?? this.taskButtonForegroundColor,
        taskButtonActivatedBackgroundColor:
            taskButtonActivatedBackgroundColor ??
                this.taskButtonForegroundColor,
        taskButtonDoneBackgroundColor:
            taskButtonDoneBackgroundColor ?? this.taskButtonForegroundColor,
        taskButtonBorderColor:
            taskButtonBorderColor ?? this.taskButtonForegroundColor,
      );

  TaskButtonThemeColors lerp(TaskButtonThemeColors? other, double t) => other ==
          null
      ? this
      : TaskButtonThemeColors(
          taskButtonForegroundColor: Color.lerp(
              taskButtonForegroundColor, other.taskButtonForegroundColor, t)!,
          taskButtonBackgroundColor: Color.lerp(
              taskButtonBackgroundColor, other.taskButtonBackgroundColor, t)!,
          taskButtonHoverdBackgroundColor: Color.lerp(
              taskButtonHoverdBackgroundColor,
              other.taskButtonHoverdBackgroundColor,
              t)!,
          taskButtonActivatedBackgroundColor: Color.lerp(
              taskButtonActivatedBackgroundColor,
              other.taskButtonActivatedBackgroundColor,
              t)!,
          taskButtonDoneBackgroundColor: Color.lerp(
              taskButtonDoneBackgroundColor,
              other.taskButtonDoneBackgroundColor,
              t)!,
          taskButtonBorderColor: Color.lerp(
              taskButtonBorderColor, other.taskButtonBorderColor, t)!,
        );
}
