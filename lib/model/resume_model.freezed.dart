// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResumeSection {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeSectionCopyWith<ResumeSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSectionCopyWith<$Res> {
  factory $ResumeSectionCopyWith(
          ResumeSection value, $Res Function(ResumeSection) then) =
      _$ResumeSectionCopyWithImpl<$Res, ResumeSection>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$ResumeSectionCopyWithImpl<$Res, $Val extends ResumeSection>
    implements $ResumeSectionCopyWith<$Res> {
  _$ResumeSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumeSectionImplCopyWith<$Res>
    implements $ResumeSectionCopyWith<$Res> {
  factory _$$ResumeSectionImplCopyWith(
          _$ResumeSectionImpl value, $Res Function(_$ResumeSectionImpl) then) =
      __$$ResumeSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$ResumeSectionImplCopyWithImpl<$Res>
    extends _$ResumeSectionCopyWithImpl<$Res, _$ResumeSectionImpl>
    implements _$$ResumeSectionImplCopyWith<$Res> {
  __$$ResumeSectionImplCopyWithImpl(
      _$ResumeSectionImpl _value, $Res Function(_$ResumeSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$ResumeSectionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResumeSectionImpl implements _ResumeSection {
  _$ResumeSectionImpl({required this.title, required this.content});

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'ResumeSection(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeSectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeSectionImplCopyWith<_$ResumeSectionImpl> get copyWith =>
      __$$ResumeSectionImplCopyWithImpl<_$ResumeSectionImpl>(this, _$identity);
}

abstract class _ResumeSection implements ResumeSection {
  factory _ResumeSection(
      {required final String title,
      required final String content}) = _$ResumeSectionImpl;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ResumeSectionImplCopyWith<_$ResumeSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Resumes {
  String get name => throw _privateConstructorUsedError;
  List<ResumeSection> get resumeModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumesCopyWith<Resumes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumesCopyWith<$Res> {
  factory $ResumesCopyWith(Resumes value, $Res Function(Resumes) then) =
      _$ResumesCopyWithImpl<$Res, Resumes>;
  @useResult
  $Res call({String name, List<ResumeSection> resumeModel});
}

/// @nodoc
class _$ResumesCopyWithImpl<$Res, $Val extends Resumes>
    implements $ResumesCopyWith<$Res> {
  _$ResumesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? resumeModel = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resumeModel: null == resumeModel
          ? _value.resumeModel
          : resumeModel // ignore: cast_nullable_to_non_nullable
              as List<ResumeSection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumesImplCopyWith<$Res> implements $ResumesCopyWith<$Res> {
  factory _$$ResumesImplCopyWith(
          _$ResumesImpl value, $Res Function(_$ResumesImpl) then) =
      __$$ResumesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<ResumeSection> resumeModel});
}

/// @nodoc
class __$$ResumesImplCopyWithImpl<$Res>
    extends _$ResumesCopyWithImpl<$Res, _$ResumesImpl>
    implements _$$ResumesImplCopyWith<$Res> {
  __$$ResumesImplCopyWithImpl(
      _$ResumesImpl _value, $Res Function(_$ResumesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? resumeModel = null,
  }) {
    return _then(_$ResumesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resumeModel: null == resumeModel
          ? _value._resumeModel
          : resumeModel // ignore: cast_nullable_to_non_nullable
              as List<ResumeSection>,
    ));
  }
}

/// @nodoc

class _$ResumesImpl implements _Resumes {
  _$ResumesImpl(
      {required this.name, required final List<ResumeSection> resumeModel})
      : _resumeModel = resumeModel;

  @override
  final String name;
  final List<ResumeSection> _resumeModel;
  @override
  List<ResumeSection> get resumeModel {
    if (_resumeModel is EqualUnmodifiableListView) return _resumeModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resumeModel);
  }

  @override
  String toString() {
    return 'Resumes(name: $name, resumeModel: $resumeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumesImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._resumeModel, _resumeModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_resumeModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumesImplCopyWith<_$ResumesImpl> get copyWith =>
      __$$ResumesImplCopyWithImpl<_$ResumesImpl>(this, _$identity);
}

abstract class _Resumes implements Resumes {
  factory _Resumes(
      {required final String name,
      required final List<ResumeSection> resumeModel}) = _$ResumesImpl;

  @override
  String get name;
  @override
  List<ResumeSection> get resumeModel;
  @override
  @JsonKey(ignore: true)
  _$$ResumesImplCopyWith<_$ResumesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
