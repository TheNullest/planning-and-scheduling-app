import 'package:flutter/material.dart';

extension IntX on int? {
  TimeOfDay toTimeOfDay() {
    if (this == null) {
      throw Exception('Value is null');
    }
    return TimeOfDay(hour: this! ~/ 60, minute: this! % 60);
  }
}
