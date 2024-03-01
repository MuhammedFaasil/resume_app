import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'resume_section_model.dart';

part 'resume_model.freezed.dart';

@unfreezed
class ResumeModel with _$ResumeModel {
  factory ResumeModel({
    required String name,
    required String designation,
    required File? profilePicture,
    required List<ResumeSectionModel> sections,
  }) = _ResumeModel;
}
