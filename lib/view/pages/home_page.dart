import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume_builder/controler/resume_provider.dart';
import 'package:resume_builder/core/extensions/navigation_extension.dart';
import 'package:resume_builder/view/pages/resume_page.dart';
import 'package:resume_builder/view/pages/view_resume_page.dart';

class ResumeHomePage extends ConsumerWidget {
  ResumeHomePage({super.key});

  // final search = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resumes = ref.watch(resumeProvider);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text('Quick Resume'),
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(56),
          //   child: SearchField(
          //     search: search,
          //     onChanged: (value) {},
          //   ),
          // ),
        ),
        body: resumes.isEmpty
            ? const Center(
                child: Text("Add a new resume"),
              )
            : ListView.separated(
                itemCount: resumes.length,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: ListTile(
                      onTap: () {
                        context.push(ViewResumePage(resume: resumes[index]));
                      },
                      leading: CircleAvatar(
                        backgroundImage: resumes[index].profilePicturePath ==
                                null
                            ? null
                            : kIsWeb
                                ? NetworkImage(
                                        resumes[index].profilePicturePath!)
                                    as ImageProvider
                                : FileImage(
                                    File(resumes[index].profilePicturePath!)),
                        child: resumes[index].profilePicturePath == null
                            ? const Icon(Icons.person)
                            : null,
                      ),
                      title: Text(resumes[index].name),
                      subtitle: Text(resumes[index].designation),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.push(ResumePage(
                                isEdit: true,
                                resume: resumes[index],
                                resumeIndex: index,
                              ));
                            },
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              ref
                                  .read(resumeProvider.notifier)
                                  .deleteResume(index);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 0,
          onPressed: () {
            context.push(ResumePage());
          },
          label: const Text("New Resume"),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
