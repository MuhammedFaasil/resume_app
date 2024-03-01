import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_section_model.freezed.dart';

@freezed
class ResumeSectionModel with _$ResumeSectionModel {
  factory ResumeSectionModel({
    required String title,
    required String content,
  }) = _ResumeSectionModel;
}
