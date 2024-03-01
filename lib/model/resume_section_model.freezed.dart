// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResumeSectionModel {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeSectionModelCopyWith<ResumeSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSectionModelCopyWith<$Res> {
  factory $ResumeSectionModelCopyWith(
          ResumeSectionModel value, $Res Function(ResumeSectionModel) then) =
      _$ResumeSectionModelCopyWithImpl<$Res, ResumeSectionModel>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$ResumeSectionModelCopyWithImpl<$Res, $Val extends ResumeSectionModel>
    implements $ResumeSectionModelCopyWith<$Res> {
  _$ResumeSectionModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ResumeSectionModelImplCopyWith<$Res>
    implements $ResumeSectionModelCopyWith<$Res> {
  factory _$$ResumeSectionModelImplCopyWith(_$ResumeSectionModelImpl value,
          $Res Function(_$ResumeSectionModelImpl) then) =
      __$$ResumeSectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$ResumeSectionModelImplCopyWithImpl<$Res>
    extends _$ResumeSectionModelCopyWithImpl<$Res, _$ResumeSectionModelImpl>
    implements _$$ResumeSectionModelImplCopyWith<$Res> {
  __$$ResumeSectionModelImplCopyWithImpl(_$ResumeSectionModelImpl _value,
      $Res Function(_$ResumeSectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$ResumeSectionModelImpl(
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

class _$ResumeSectionModelImpl implements _ResumeSectionModel {
  _$ResumeSectionModelImpl({required this.title, required this.content});

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'ResumeSectionModel(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeSectionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeSectionModelImplCopyWith<_$ResumeSectionModelImpl> get copyWith =>
      __$$ResumeSectionModelImplCopyWithImpl<_$ResumeSectionModelImpl>(
          this, _$identity);
}

abstract class _ResumeSectionModel implements ResumeSectionModel {
  factory _ResumeSectionModel(
      {required final String title,
      required final String content}) = _$ResumeSectionModelImpl;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ResumeSectionModelImplCopyWith<_$ResumeSectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
