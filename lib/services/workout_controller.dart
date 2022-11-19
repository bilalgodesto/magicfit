import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/work_out_provider.dart';

class WorkoutController {
  static void saveWorkout(BuildContext context, String id, List<Sets> set) {
    var totalItems =
        Provider.of<WorkoutProvider>(context, listen: false).items.length;

    totalItems = totalItems + 1;

    WorkoutItem item = WorkoutItem(
      sets: set,
      id: id,
      dateTime: DateTime.now(),
    );

    Provider.of<WorkoutProvider>(context, listen: false).addNew(item.id, item);
  }

  static void removeItem(String id, BuildContext context) {
    Provider.of<WorkoutProvider>(context, listen: false).deleteItem(id);
  }

  static int lengthOfItems(BuildContext context) {
    return Provider.of<WorkoutProvider>(context, listen: false).items.length;
  }
}
