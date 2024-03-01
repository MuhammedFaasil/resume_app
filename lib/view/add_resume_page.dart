import 'package:flutter/material.dart';
import 'package:resume_builder/view/add_resume_widget.dart';
import 'package:resume_builder/view/resume_view_page.dart';

class AddResumePage extends StatelessWidget {
  const AddResumePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewPage(),
                    ));
              },
              icon: const Icon(Icons.remove_red_eye))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AddResumeWidget(height: 60),
            )
          ],
        ),
      ),
    );
  }
}
