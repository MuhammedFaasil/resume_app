import 'package:resume_builder/model/resume_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resume_provider.g.dart';

@riverpod
class Resume extends _$Resume {
  @override
  Resumes build() {
    return Resumes(
      name: '',
      resumeModel: [],
    );
  }

  
}
