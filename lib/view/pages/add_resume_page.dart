import 'package:flutter/material.dart';
import 'package:resume_builder/core/extensions/alert_dialog_extesnions.dart';
import 'package:resume_builder/core/extensions/snack_bar_extesnions.dart';

import '../widgets/resume_field_widget.dart';
import '../widgets/section_widget.dart';

class AddResumePage extends StatelessWidget {
  AddResumePage({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController designation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Resume'),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (name.text.isEmpty || designation.text.isEmpty) {
                  context.errorSnackBar(
                      "Cannot save with empty name and designation");
                }
              },
              child: const Text("Save"),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 88,
                    ),
                    const SizedBox(height: 32),
                    ResumeField(
                      controller: name,
                      prefixIcon: const Icon(Icons.person),
                      labelText: const Text("Full Name"),
                      hintText: 'Enter your name',
                    ),
                    const SizedBox(height: 16),
                    ResumeField(
                      controller: designation,
                      prefixIcon: const Icon(Icons.work),
                      labelText: const Text("Designation"),
                      hintText: "Enter your designation",
                    ),
                  ],
                ),
              ),
            ),
            const SliverAppBar(
              pinned: true,
              primary: false,
              automaticallyImplyLeading: false,
              title: Text("Sections"),
            ),
            SliverList.separated(
              itemCount: 1,
              itemBuilder: (context, index) => const SectionWidget(
                sectionTitle: "Title of Section",
                sectionContents:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor, justo eget ultrices hendrerit, mauris quam malesuada augue, vel fermentum justo tortor sit amet ligula. Integer bibendum, ipsum eu cursus eleifend, nulla libero commodo neque, id interdum elit lectus at ipsum. Sed nec libero ut dolor iaculis posuere. Aliquam euismod nunc id quam hendrerit, eget imperdiet libero facilisis. Vivamus nec leo vel dui gravida rhoncus. Quisque consectetur, metus vitae tincidunt dapibus, sem risus pharetra nisi, et tincidunt elit ipsum vel turpis. Proin laoreet mauris ac felis sollicitudin, non accumsan velit hendrerit. Curabitur vel leo vel arcu tristique congue vel et enim. In hac habitasse platea dictumst.",
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 8),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              context.addNewSectionDialog();
            },
            child: const Text("Add a New Section"),
          ),
        ),
      ),
    );
  }
}
