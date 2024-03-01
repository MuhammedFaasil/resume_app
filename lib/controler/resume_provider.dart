import 'dart:convert';

import 'package:resume_builder/model/resume_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'resume_provider.g.dart';

@riverpod
class Resume extends _$Resume {
  @override
  List<ResumeModel> build() {
    getAllResumes();
    return <ResumeModel>[];
  }

  final prefs = SharedPreferences.getInstance();

  void addResume(ResumeModel resumeData) async {
    (await prefs).setString(resumeData.id, jsonEncode(resumeData.toJson()));
    state = [...state, resumeData];
  }

  void getAllResumes() {
    prefs.then((value) {
      final ids = value.getKeys();
      final resumes = <ResumeModel>[];
      for (final id in ids) {
        resumes.add(ResumeModel.fromJson(jsonDecode(value.getString(id)!)));
      }
      state = List.from(resumes);
    });
  }

  void updateResume(int index, ResumeModel resumeData) async {
    (await prefs).setString(resumeData.id, jsonEncode(resumeData.toJson()));
    state = [
      for (final resume in state)
        if (resume != state[index]) resume else resumeData
    ];
  }

  void deleteResume(int index) async {
    (await prefs).remove(state[index].id);
    state = [
      for (final resume in state)
        if (resume != state[index]) resume
    ];
  }
}
