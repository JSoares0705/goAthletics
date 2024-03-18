import 'package:flutter/material.dart';
import 'package:go_athletics/Extra/models.dart';

class WorkoutController {
  List<WorkoutModel> workouts = [];
  TextEditingController nameTextEditingController = TextEditingController();

  void addWorkout(WorkoutModel workout) {
    workouts.add(workout);
    nameTextEditingController.clear();
  }

  void removeWorkout(int index) {
    if (index >= 0 && index < workouts.length) {
      workouts.removeAt(index);
    }
  }

  void dispose() {
    nameTextEditingController.dispose();
  }
}
