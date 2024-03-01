import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/controler/resume_provider.dart';
import 'package:resume_builder/core/extensions/alert_dialog_extesnions.dart';
import 'package:resume_builder/core/extensions/navigation_extension.dart';
import 'package:resume_builder/core/extensions/snack_bar_extesnions.dart';
import 'package:resume_builder/model/resume_model.dart';
import 'package:resume_builder/model/resume_section_model.dart';

import '../widgets/resume_field_widget.dart';
import '../widgets/section_widget.dart';

class ResumePage extends HookConsumerWidget {
  final bool isEdit;
  final ResumeModel? resume;
  final int? resumeIndex;
  ResumePage({super.key, this.isEdit = false, this.resume, this.resumeIndex});
  final TextEditingController name = TextEditingController();
  final TextEditingController designation = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isEdit) {
      name.text = resume!.name;
      designation.text = resume!.designation;
    }
    final sectionList =
        useState<List<ResumeSectionModel>>(isEdit ? resume!.sections : []);
    final image = useState<File?>(isEdit ? resume!.profilePicture : null);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('${isEdit ? "Update" : "Create"} Resume'),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (name.text.isEmpty || designation.text.isEmpty) {
                  context.errorSnackBar(
                      "Cannot save with empty name and designation");
                } else {
                  if (isEdit) {
                    ref.read(resumeProvider.notifier).updateResume(
                        resumeIndex!,
                        ResumeModel(
                            name: name.text,
                            designation: designation.text,
                            profilePicture: image.value,
                            sections: sectionList.value));
                  } else {
                    ref.read(resumeProvider.notifier).addResume(
                          ResumeModel(
                            name: name.text,
                            designation: designation.text,
                            profilePicture: image.value,
                            sections: sectionList.value,
                          ),
                        );
                  }
                  context.successSnackBar("Saved Resume");
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
                    GestureDetector(
                      onTap: () async {
                        final picker = ImagePicker();
                        if (kIsWeb) {}
                        final pickedImage =
                            await picker.pickImage(source: ImageSource.gallery);
                        if (pickedImage != null) {
                          image.value = File(pickedImage.path);
                        }
                      },
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 88,
                          backgroundImage: image.value == null
                              ? null
                              : kIsWeb
                                  ? NetworkImage(image.value!.path)
                                      as ImageProvider
                                  : FileImage(image.value!),
                        ),
                      ),
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
            sectionList.value.isEmpty
                ? const SliverToBoxAdapter(
                    child: Center(
                      child: Text("Add Section"),
                    ),
                  )
                : SliverList.separated(
                    itemCount: sectionList.value.length,
                    itemBuilder: (context, index) => SectionWidget(
                      sectionTitle: sectionList.value[index].title,
                      sectionContents: sectionList.value[index].content,
                      onDelete: () {
                        final sections = sectionList.value;
                        sections.removeAt(index);
                        sectionList.value = List.from(sections);
                        context.pop();
                      },
                      moveUp: () {
                        if (index == 0) {
                          return;
                        }
                        final sections = sectionList.value;
                        final temp = sections[index];
                        sections[index] = sections[index - 1];
                        sections[index - 1] = temp;
                        sectionList.value = List.from(sections);
                      },
                      moveDown: () {
                        if (index == sectionList.value.length - 1) {
                          return;
                        }
                        final sections = sectionList.value;
                        final temp = sections[index];
                        sections[index] = sections[index + 1];
                        sections[index + 1] = temp;
                        sectionList.value = List.from(sections);
                      },
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
              context.addNewSectionDialog(
                (title, content) {
                  final sections = sectionList.value;
                  sections
                      .add(ResumeSectionModel(title: title, content: content));
                  sectionList.value = List.from(sections);
                  context.pop();
                },
              );
            },
            child: const Text("Add a New Section"),
          ),
        ),
      ),
    );
  }
}
