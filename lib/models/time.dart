import 'package:flutter/material.dart';

class Time {
  late TimeOfDay startTime;
  late TimeOfDay endTime;

  Future<void> showStartTimePicker(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      startTime = pickedTime; // 선택된 시간 업데이트
    }
  }

  Future<void> showEndTimePicker(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      endTime = pickedTime; // 선택된 시간 업데이트
    }
  }
}
