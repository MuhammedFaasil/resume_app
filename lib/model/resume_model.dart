import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_model.freezed.dart';

@freezed
class ResumeSection with _$ResumeSection {
  factory ResumeSection({
    required String title,
    required String content,
  }) = _ResumeSection;
}

@freezed
class Resumes with _$Resumes {
  factory Resumes({
    required String name,
    required List<ResumeSection> resumeModel,
  }) = _Resumes;
}
