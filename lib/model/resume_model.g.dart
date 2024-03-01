// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeModelImpl _$$ResumeModelImplFromJson(Map<String, dynamic> json) =>
    _$ResumeModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      designation: json['designation'] as String,
      profilePicturePath: json['profilePicturePath'] as String?,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => ResumeSectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResumeModelImplToJson(_$ResumeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'designation': instance.designation,
      'profilePicturePath': instance.profilePicturePath,
      'sections': instance.sections,
    };
