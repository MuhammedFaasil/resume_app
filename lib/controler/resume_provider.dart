import 'package:resume_builder/model/resume_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resume_provider.g.dart';

@riverpod
class Resume extends _$Resume {
  @override
  List<ResumeModel> build() {
    return <ResumeModel>[];
  }

  void addResume(ResumeModel resumeData) {
    state = [...state, resumeData];
  }

  void updateResume(int index, ResumeModel resumeData) {
    state = [
      for (final resume in state)
        if (resume != state[index]) resume else resumeData
    ];
  }

  void deleteResume(int index) {
    state = [
      for (final resume in state)
        if (resume != state[index]) resume
    ];
  }
}
