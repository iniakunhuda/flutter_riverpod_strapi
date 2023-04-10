// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  List<DataDTO> get data => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call({List<DataDTO> data, MetaDTO meta});

  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataDTO>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res> get meta {
    return $MetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataDTO> data, MetaDTO meta});

  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$_UserDTO>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_UserDTO(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataDTO>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO implements _UserDTO {
  _$_UserDTO({required final List<DataDTO> data, required this.meta})
      : _data = data;

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  final List<DataDTO> _data;
  @override
  List<DataDTO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final MetaDTO meta;

  @override
  String toString() {
    return 'UserDTO(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDTO &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  factory _UserDTO(
      {required final List<DataDTO> data,
      required final MetaDTO meta}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  List<DataDTO> get data;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailDTO _$UserDetailDTOFromJson(Map<String, dynamic> json) {
  return _UserDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDetailDTO {
  DataDTO get data => throw _privateConstructorUsedError;
  MetaDTO get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailDTOCopyWith<UserDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailDTOCopyWith<$Res> {
  factory $UserDetailDTOCopyWith(
          UserDetailDTO value, $Res Function(UserDetailDTO) then) =
      _$UserDetailDTOCopyWithImpl<$Res, UserDetailDTO>;
  @useResult
  $Res call({DataDTO data, MetaDTO meta});

  $DataDTOCopyWith<$Res> get data;
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$UserDetailDTOCopyWithImpl<$Res, $Val extends UserDetailDTO>
    implements $UserDetailDTOCopyWith<$Res> {
  _$UserDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataDTO,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDTOCopyWith<$Res> get data {
    return $DataDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res> get meta {
    return $MetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDetailDTOCopyWith<$Res>
    implements $UserDetailDTOCopyWith<$Res> {
  factory _$$_UserDetailDTOCopyWith(
          _$_UserDetailDTO value, $Res Function(_$_UserDetailDTO) then) =
      __$$_UserDetailDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataDTO data, MetaDTO meta});

  @override
  $DataDTOCopyWith<$Res> get data;
  @override
  $MetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_UserDetailDTOCopyWithImpl<$Res>
    extends _$UserDetailDTOCopyWithImpl<$Res, _$_UserDetailDTO>
    implements _$$_UserDetailDTOCopyWith<$Res> {
  __$$_UserDetailDTOCopyWithImpl(
      _$_UserDetailDTO _value, $Res Function(_$_UserDetailDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_UserDetailDTO(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataDTO,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailDTO implements _UserDetailDTO {
  _$_UserDetailDTO({required this.data, required this.meta});

  factory _$_UserDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailDTOFromJson(json);

  @override
  final DataDTO data;
  @override
  final MetaDTO meta;

  @override
  String toString() {
    return 'UserDetailDTO(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailDTO &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailDTOCopyWith<_$_UserDetailDTO> get copyWith =>
      __$$_UserDetailDTOCopyWithImpl<_$_UserDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailDTOToJson(
      this,
    );
  }
}

abstract class _UserDetailDTO implements UserDetailDTO {
  factory _UserDetailDTO(
      {required final DataDTO data,
      required final MetaDTO meta}) = _$_UserDetailDTO;

  factory _UserDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_UserDetailDTO.fromJson;

  @override
  DataDTO get data;
  @override
  MetaDTO get meta;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailDTOCopyWith<_$_UserDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DataDTO _$DataDTOFromJson(Map<String, dynamic> json) {
  return _DataDTO.fromJson(json);
}

/// @nodoc
mixin _$DataDTO {
  int get id => throw _privateConstructorUsedError;
  AttributeDTO get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDTOCopyWith<DataDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDTOCopyWith<$Res> {
  factory $DataDTOCopyWith(DataDTO value, $Res Function(DataDTO) then) =
      _$DataDTOCopyWithImpl<$Res, DataDTO>;
  @useResult
  $Res call({int id, AttributeDTO attributes});

  $AttributeDTOCopyWith<$Res> get attributes;
}

/// @nodoc
class _$DataDTOCopyWithImpl<$Res, $Val extends DataDTO>
    implements $DataDTOCopyWith<$Res> {
  _$DataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as AttributeDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributeDTOCopyWith<$Res> get attributes {
    return $AttributeDTOCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataDTOCopyWith<$Res> implements $DataDTOCopyWith<$Res> {
  factory _$$_DataDTOCopyWith(
          _$_DataDTO value, $Res Function(_$_DataDTO) then) =
      __$$_DataDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, AttributeDTO attributes});

  @override
  $AttributeDTOCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_DataDTOCopyWithImpl<$Res>
    extends _$DataDTOCopyWithImpl<$Res, _$_DataDTO>
    implements _$$_DataDTOCopyWith<$Res> {
  __$$_DataDTOCopyWithImpl(_$_DataDTO _value, $Res Function(_$_DataDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_DataDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as AttributeDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataDTO implements _DataDTO {
  _$_DataDTO({required this.id, required this.attributes});

  factory _$_DataDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DataDTOFromJson(json);

  @override
  final int id;
  @override
  final AttributeDTO attributes;

  @override
  String toString() {
    return 'DataDTO(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataDTOCopyWith<_$_DataDTO> get copyWith =>
      __$$_DataDTOCopyWithImpl<_$_DataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataDTOToJson(
      this,
    );
  }
}

abstract class _DataDTO implements DataDTO {
  factory _DataDTO(
      {required final int id,
      required final AttributeDTO attributes}) = _$_DataDTO;

  factory _DataDTO.fromJson(Map<String, dynamic> json) = _$_DataDTO.fromJson;

  @override
  int get id;
  @override
  AttributeDTO get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_DataDTOCopyWith<_$_DataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDTO _$MetaDTOFromJson(Map<String, dynamic> json) {
  return _MetaDTO.fromJson(json);
}

/// @nodoc
mixin _$MetaDTO {
  PaginationDTO? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDTOCopyWith<MetaDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDTOCopyWith<$Res> {
  factory $MetaDTOCopyWith(MetaDTO value, $Res Function(MetaDTO) then) =
      _$MetaDTOCopyWithImpl<$Res, MetaDTO>;
  @useResult
  $Res call({PaginationDTO? pagination});

  $PaginationDTOCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MetaDTOCopyWithImpl<$Res, $Val extends MetaDTO>
    implements $MetaDTOCopyWith<$Res> {
  _$MetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationDTOCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationDTOCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MetaDTOCopyWith<$Res> implements $MetaDTOCopyWith<$Res> {
  factory _$$_MetaDTOCopyWith(
          _$_MetaDTO value, $Res Function(_$_MetaDTO) then) =
      __$$_MetaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationDTO? pagination});

  @override
  $PaginationDTOCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_MetaDTOCopyWithImpl<$Res>
    extends _$MetaDTOCopyWithImpl<$Res, _$_MetaDTO>
    implements _$$_MetaDTOCopyWith<$Res> {
  __$$_MetaDTOCopyWithImpl(_$_MetaDTO _value, $Res Function(_$_MetaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_$_MetaDTO(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDTO implements _MetaDTO {
  _$_MetaDTO({this.pagination});

  factory _$_MetaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDTOFromJson(json);

  @override
  final PaginationDTO? pagination;

  @override
  String toString() {
    return 'MetaDTO(pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDTO &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDTOCopyWith<_$_MetaDTO> get copyWith =>
      __$$_MetaDTOCopyWithImpl<_$_MetaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDTOToJson(
      this,
    );
  }
}

abstract class _MetaDTO implements MetaDTO {
  factory _MetaDTO({final PaginationDTO? pagination}) = _$_MetaDTO;

  factory _MetaDTO.fromJson(Map<String, dynamic> json) = _$_MetaDTO.fromJson;

  @override
  PaginationDTO? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDTOCopyWith<_$_MetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributeDTO _$AttributeDTOFromJson(Map<String, dynamic> json) {
  return _AttributeDTO.fromJson(json);
}

/// @nodoc
mixin _$AttributeDTO {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeDTOCopyWith<AttributeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeDTOCopyWith<$Res> {
  factory $AttributeDTOCopyWith(
          AttributeDTO value, $Res Function(AttributeDTO) then) =
      _$AttributeDTOCopyWithImpl<$Res, AttributeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String avatar,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime publishedAt});
}

/// @nodoc
class _$AttributeDTOCopyWithImpl<$Res, $Val extends AttributeDTO>
    implements $AttributeDTOCopyWith<$Res> {
  _$AttributeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? avatar = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributeDTOCopyWith<$Res>
    implements $AttributeDTOCopyWith<$Res> {
  factory _$$_AttributeDTOCopyWith(
          _$_AttributeDTO value, $Res Function(_$_AttributeDTO) then) =
      __$$_AttributeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email,
      String avatar,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime publishedAt});
}

/// @nodoc
class __$$_AttributeDTOCopyWithImpl<$Res>
    extends _$AttributeDTOCopyWithImpl<$Res, _$_AttributeDTO>
    implements _$$_AttributeDTOCopyWith<$Res> {
  __$$_AttributeDTOCopyWithImpl(
      _$_AttributeDTO _value, $Res Function(_$_AttributeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? avatar = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
  }) {
    return _then(_$_AttributeDTO(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributeDTO implements _AttributeDTO {
  _$_AttributeDTO(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.email,
      required this.avatar,
      required this.createdAt,
      required this.updatedAt,
      required this.publishedAt});

  factory _$_AttributeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeDTOFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String email;
  @override
  final String avatar;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime publishedAt;

  @override
  String toString() {
    return 'AttributeDTO(firstName: $firstName, lastName: $lastName, email: $email, avatar: $avatar, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributeDTO &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      avatar, createdAt, updatedAt, publishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributeDTOCopyWith<_$_AttributeDTO> get copyWith =>
      __$$_AttributeDTOCopyWithImpl<_$_AttributeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeDTOToJson(
      this,
    );
  }
}

abstract class _AttributeDTO implements AttributeDTO {
  factory _AttributeDTO(
      {@JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      required final String email,
      required final String avatar,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final DateTime publishedAt}) = _$_AttributeDTO;

  factory _AttributeDTO.fromJson(Map<String, dynamic> json) =
      _$_AttributeDTO.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get email;
  @override
  String get avatar;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AttributeDTOCopyWith<_$_AttributeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationDTO _$PaginationDTOFromJson(Map<String, dynamic> json) {
  return _PaginationDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginationDTO {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationDTOCopyWith<PaginationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDTOCopyWith<$Res> {
  factory $PaginationDTOCopyWith(
          PaginationDTO value, $Res Function(PaginationDTO) then) =
      _$PaginationDTOCopyWithImpl<$Res, PaginationDTO>;
  @useResult
  $Res call({int page, int pageSize, int pageCount, int total});
}

/// @nodoc
class _$PaginationDTOCopyWithImpl<$Res, $Val extends PaginationDTO>
    implements $PaginationDTOCopyWith<$Res> {
  _$PaginationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? pageCount = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationDTOCopyWith<$Res>
    implements $PaginationDTOCopyWith<$Res> {
  factory _$$_PaginationDTOCopyWith(
          _$_PaginationDTO value, $Res Function(_$_PaginationDTO) then) =
      __$$_PaginationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int pageSize, int pageCount, int total});
}

/// @nodoc
class __$$_PaginationDTOCopyWithImpl<$Res>
    extends _$PaginationDTOCopyWithImpl<$Res, _$_PaginationDTO>
    implements _$$_PaginationDTOCopyWith<$Res> {
  __$$_PaginationDTOCopyWithImpl(
      _$_PaginationDTO _value, $Res Function(_$_PaginationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? pageCount = null,
    Object? total = null,
  }) {
    return _then(_$_PaginationDTO(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationDTO implements _PaginationDTO {
  _$_PaginationDTO(
      {required this.page,
      required this.pageSize,
      required this.pageCount,
      required this.total});

  factory _$_PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationDTOFromJson(json);

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int pageCount;
  @override
  final int total;

  @override
  String toString() {
    return 'PaginationDTO(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationDTO &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, pageSize, pageCount, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationDTOCopyWith<_$_PaginationDTO> get copyWith =>
      __$$_PaginationDTOCopyWithImpl<_$_PaginationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationDTOToJson(
      this,
    );
  }
}

abstract class _PaginationDTO implements PaginationDTO {
  factory _PaginationDTO(
      {required final int page,
      required final int pageSize,
      required final int pageCount,
      required final int total}) = _$_PaginationDTO;

  factory _PaginationDTO.fromJson(Map<String, dynamic> json) =
      _$_PaginationDTO.fromJson;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get pageCount;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationDTOCopyWith<_$_PaginationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
