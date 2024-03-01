import 'package:flutter/material.dart';
import 'package:resume_builder/core/extensions/navigation_extension.dart';
import 'package:resume_builder/view/pages/add_resume_page.dart';

import '../widgets/search_field_widget.dart';

class ResumeHomePage extends StatelessWidget {
  ResumeHomePage({super.key});

  final search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text('Quick Resume'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: SearchField(
              search: search,
              onChanged: (value) {
                //TODO: implement search functionality
              },
            ),
          ),
        ),
        body: ListView.separated(
          itemCount: 3,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: const Text('Fasil'),
                subtitle: const Text("FLutter Developer"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 0,
          onPressed: () {
            context.push(AddResumePage());
          },
          label: const Text("New Resume"),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
