import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume_builder/core/extensions/navigation_extension.dart';
import 'package:resume_builder/core/extensions/snack_bar_extesnions.dart';

import '../../view/widgets/resume_field_widget.dart';

class AddNewSectionWidget extends ConsumerWidget {
  final void Function(String title, String content) onAdd;
  AddNewSectionWidget({
    super.key,
    required this.onAdd,
  });
  final title = TextEditingController();
  final content = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldMessenger(
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: AlertDialog(
            title: const Text("Add a new section"),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ResumeField(
                    controller: title,
                    hintText: 'Enter the section title',
                  ),
                  const SizedBox(height: 16),
                  ResumeField(
                    controller: content,
                    hintText: 'Enter the section content',
                    maxLines: null,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (title.text.isEmpty || content.text.isEmpty) {
                    context.errorSnackBar(
                        'You must fill title and content to create a new section');
                  } else {
                    onAdd(title.text,content.text);
                  }
                },
                child: const Text("Submit"),
              )
            ],
          ),
        );
      }),
    );
  }
}
