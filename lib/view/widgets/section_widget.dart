import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume_builder/core/extensions/alert_dialog_extesnions.dart';

class SectionWidget extends ConsumerWidget {
  final String sectionTitle;
  final String sectionContents;
  final VoidCallback onDelete;
  final VoidCallback moveUp;
  final VoidCallback moveDown;
  const SectionWidget({
    super.key,
    required this.sectionTitle,
    required this.sectionContents,
    required this.onDelete,
    required this.moveUp,
    required this.moveDown,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    sectionTitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.warningDialog(
                      "Are you sure you want to delete?",
                      onDelete,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Delete Section"),
                ),
              ],
            ),
            Text(
              sectionContents,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: moveUp,
                  label: const Text('Move up'),
                  icon: const Icon(Icons.arrow_upward),
                ),
                ElevatedButton.icon(
                  onPressed: moveDown,
                  label: const Text('Move down'),
                  icon: const Icon(Icons.arrow_downward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
