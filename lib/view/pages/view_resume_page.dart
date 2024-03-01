import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/model/resume_model.dart';

class ViewResumePage extends StatelessWidget {
  final ResumeModel resume;
  const ViewResumePage({
    super.key,
    required this.resume,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${resume.name}'s Resume"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity, height: 16),
              CircleAvatar(
                radius: 72,
                backgroundImage: resume.profilePicturePath == null
                    ? null
                    : kIsWeb
                        ? NetworkImage(resume.profilePicturePath!)
                            as ImageProvider
                        : FileImage(File(resume.profilePicturePath!)),
              ),
              const SizedBox(height: 12),
              Text(
                resume.name,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 4),
              Text(
                resume.designation,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "SECTIONS",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              ListView.builder(
                itemCount: resume.sections.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(resume.sections[index].title),
                    subtitle: Text(resume.sections[index].content),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
