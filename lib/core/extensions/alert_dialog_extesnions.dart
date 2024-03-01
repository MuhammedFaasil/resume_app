import 'package:flutter/material.dart';
import 'package:resume_builder/core/extensions/navigation_extension.dart';
import '../widgets/add_new_section_widgets.dart';

extension AlertDialogExtesnion on BuildContext {
  void warningDialog(String message, void Function() onSubmit) {
    showDialog(
      context: this,
      builder: (context) => AlertDialog(
        content: Text(
          message,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              pop();
            },
            child: const Text("No"),
          ),
          TextButton(
            onPressed: onSubmit,
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  void addNewSectionDialog() {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (context) => AddNewSectionWidget(),
    );
  }
}
