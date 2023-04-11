// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorResponseDTO _$ErrorResponseDTOFromJson(Map<String, dynamic> json) {
  return _ErrorResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseDTO {
  dynamic get data => throw _privateConstructorUsedError;
  ErrorDTO get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseDTOCopyWith<ErrorResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseDTOCopyWith<$Res> {
  factory $ErrorResponseDTOCopyWith(
          ErrorResponseDTO value, $Res Function(ErrorResponseDTO) then) =
      _$ErrorResponseDTOCopyWithImpl<$Res, ErrorResponseDTO>;
  @useResult
  $Res call({dynamic data, ErrorDTO error});

  $ErrorDTOCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorResponseDTOCopyWithImpl<$Res, $Val extends ErrorResponseDTO>
    implements $ErrorResponseDTOCopyWith<$Res> {
  _$ErrorResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorDTOCopyWith<$Res> get error {
    return $ErrorDTOCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ErrorResponseDTOCopyWith<$Res>
    implements $ErrorResponseDTOCopyWith<$Res> {
  factory _$$_ErrorResponseDTOCopyWith(
          _$_ErrorResponseDTO value, $Res Function(_$_ErrorResponseDTO) then) =
      __$$_ErrorResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic data, ErrorDTO error});

  @override
  $ErrorDTOCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorResponseDTOCopyWithImpl<$Res>
    extends _$ErrorResponseDTOCopyWithImpl<$Res, _$_ErrorResponseDTO>
    implements _$$_ErrorResponseDTOCopyWith<$Res> {
  __$$_ErrorResponseDTOCopyWithImpl(
      _$_ErrorResponseDTO _value, $Res Function(_$_ErrorResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_$_ErrorResponseDTO(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResponseDTO implements _ErrorResponseDTO {
  _$_ErrorResponseDTO({required this.data, required this.error});

  factory _$_ErrorResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorResponseDTOFromJson(json);

  @override
  final dynamic data;
  @override
  final ErrorDTO error;

  @override
  String toString() {
    return 'ErrorResponseDTO(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorResponseDTO &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorResponseDTOCopyWith<_$_ErrorResponseDTO> get copyWith =>
      __$$_ErrorResponseDTOCopyWithImpl<_$_ErrorResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorResponseDTOToJson(
      this,
    );
  }
}

abstract class _ErrorResponseDTO implements ErrorResponseDTO {
  factory _ErrorResponseDTO(
      {required final dynamic data,
      required final ErrorDTO error}) = _$_ErrorResponseDTO;

  factory _ErrorResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponseDTO.fromJson;

  @override
  dynamic get data;
  @override
  ErrorDTO get error;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorResponseDTOCopyWith<_$_ErrorResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDTO _$ErrorDTOFromJson(Map<String, dynamic> json) {
  return _ErrorDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorDTO {
  int get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ErrorDetailDTO get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDTOCopyWith<ErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDTOCopyWith<$Res> {
  factory $ErrorDTOCopyWith(ErrorDTO value, $Res Function(ErrorDTO) then) =
      _$ErrorDTOCopyWithImpl<$Res, ErrorDTO>;
  @useResult
  $Res call({int status, String name, String message, ErrorDetailDTO details});

  $ErrorDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class _$ErrorDTOCopyWithImpl<$Res, $Val extends ErrorDTO>
    implements $ErrorDTOCopyWith<$Res> {
  _$ErrorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? message = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ErrorDetailDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorDetailDTOCopyWith<$Res> get details {
    return $ErrorDetailDTOCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ErrorDTOCopyWith<$Res> implements $ErrorDTOCopyWith<$Res> {
  factory _$$_ErrorDTOCopyWith(
          _$_ErrorDTO value, $Res Function(_$_ErrorDTO) then) =
      __$$_ErrorDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String name, String message, ErrorDetailDTO details});

  @override
  $ErrorDetailDTOCopyWith<$Res> get details;
}

/// @nodoc
class __$$_ErrorDTOCopyWithImpl<$Res>
    extends _$ErrorDTOCopyWithImpl<$Res, _$_ErrorDTO>
    implements _$$_ErrorDTOCopyWith<$Res> {
  __$$_ErrorDTOCopyWithImpl(
      _$_ErrorDTO _value, $Res Function(_$_ErrorDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? message = null,
    Object? details = null,
  }) {
    return _then(_$_ErrorDTO(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ErrorDetailDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorDTO implements _ErrorDTO {
  _$_ErrorDTO(
      {required this.status,
      required this.name,
      required this.message,
      required this.details});

  factory _$_ErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDTOFromJson(json);

  @override
  final int status;
  @override
  final String name;
  @override
  final String message;
  @override
  final ErrorDetailDTO details;

  @override
  String toString() {
    return 'ErrorDTO(status: $status, name: $name, message: $message, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorDTO &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, name, message, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorDTOCopyWith<_$_ErrorDTO> get copyWith =>
      __$$_ErrorDTOCopyWithImpl<_$_ErrorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDTOToJson(
      this,
    );
  }
}

abstract class _ErrorDTO implements ErrorDTO {
  factory _ErrorDTO(
      {required final int status,
      required final String name,
      required final String message,
      required final ErrorDetailDTO details}) = _$_ErrorDTO;

  factory _ErrorDTO.fromJson(Map<String, dynamic> json) = _$_ErrorDTO.fromJson;

  @override
  int get status;
  @override
  String get name;
  @override
  String get message;
  @override
  ErrorDetailDTO get details;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorDTOCopyWith<_$_ErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDetailDTO _$ErrorDetailDTOFromJson(Map<String, dynamic> json) {
  return _ErrorDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorDetailDTO {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailDTOCopyWith<$Res> {
  factory $ErrorDetailDTOCopyWith(
          ErrorDetailDTO value, $Res Function(ErrorDetailDTO) then) =
      _$ErrorDetailDTOCopyWithImpl<$Res, ErrorDetailDTO>;
}

/// @nodoc
class _$ErrorDetailDTOCopyWithImpl<$Res, $Val extends ErrorDetailDTO>
    implements $ErrorDetailDTOCopyWith<$Res> {
  _$ErrorDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ErrorDetailDTOCopyWith<$Res> {
  factory _$$_ErrorDetailDTOCopyWith(
          _$_ErrorDetailDTO value, $Res Function(_$_ErrorDetailDTO) then) =
      __$$_ErrorDetailDTOCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorDetailDTOCopyWithImpl<$Res>
    extends _$ErrorDetailDTOCopyWithImpl<$Res, _$_ErrorDetailDTO>
    implements _$$_ErrorDetailDTOCopyWith<$Res> {
  __$$_ErrorDetailDTOCopyWithImpl(
      _$_ErrorDetailDTO _value, $Res Function(_$_ErrorDetailDTO) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ErrorDetailDTO implements _ErrorDetailDTO {
  _$_ErrorDetailDTO();

  factory _$_ErrorDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDetailDTOFromJson(json);

  @override
  String toString() {
    return 'ErrorDetailDTO()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ErrorDetailDTO);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDetailDTOToJson(
      this,
    );
  }
}

abstract class _ErrorDetailDTO implements ErrorDetailDTO {
  factory _ErrorDetailDTO() = _$_ErrorDetailDTO;

  factory _ErrorDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_ErrorDetailDTO.fromJson;
}
