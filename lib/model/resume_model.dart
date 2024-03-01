import 'package:freezed_annotation/freezed_annotation.dart';

import 'resume_section_model.dart';

part 'resume_model.freezed.dart';
part 'resume_model.g.dart';

@unfreezed
class ResumeModel with _$ResumeModel {
  factory ResumeModel({
    required String id,
    required String name,
    required String designation,
    required String? profilePicturePath,
    required List<ResumeSectionModel> sections,
  }) = _ResumeModel;
  factory ResumeModel.fromJson(Map<String, Object?> json) =>
      _$ResumeModelFromJson(json);
}
