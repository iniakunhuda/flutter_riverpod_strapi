// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String email,
      String avatar});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String email,
      String avatar});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.email,
      required this.avatar});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final int id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String email;
  @override
  final String avatar;

  @override
  String toString() {
    return 'UserModel(id: $id, first_name: $first_name, last_name: $last_name, email: $email, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, first_name, last_name, email, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final int id,
      required final String first_name,
      required final String last_name,
      required final String email,
      required final String avatar}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get email;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRequest {
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestCopyWith<UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestCopyWith<$Res> {
  factory $UserRequestCopyWith(
          UserRequest value, $Res Function(UserRequest) then) =
      _$UserRequestCopyWithImpl<$Res, UserRequest>;
  @useResult
  $Res call({String first_name, String last_name, String email, String avatar});
}

/// @nodoc
class _$UserRequestCopyWithImpl<$Res, $Val extends UserRequest>
    implements $UserRequestCopyWith<$Res> {
  _$UserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = null,
    Object? last_name = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRequestCopyWith<$Res>
    implements $UserRequestCopyWith<$Res> {
  factory _$$_UserRequestCopyWith(
          _$_UserRequest value, $Res Function(_$_UserRequest) then) =
      __$$_UserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String first_name, String last_name, String email, String avatar});
}

/// @nodoc
class __$$_UserRequestCopyWithImpl<$Res>
    extends _$UserRequestCopyWithImpl<$Res, _$_UserRequest>
    implements _$$_UserRequestCopyWith<$Res> {
  __$$_UserRequestCopyWithImpl(
      _$_UserRequest _value, $Res Function(_$_UserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = null,
    Object? last_name = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_$_UserRequest(
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRequest implements _UserRequest {
  _$_UserRequest(
      {required this.first_name,
      required this.last_name,
      required this.email,
      required this.avatar});

  factory _$_UserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UserRequestFromJson(json);

  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String email;
  @override
  final String avatar;

  @override
  String toString() {
    return 'UserRequest(first_name: $first_name, last_name: $last_name, email: $email, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRequest &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, first_name, last_name, email, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRequestCopyWith<_$_UserRequest> get copyWith =>
      __$$_UserRequestCopyWithImpl<_$_UserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRequestToJson(
      this,
    );
  }
}

abstract class _UserRequest implements UserRequest {
  factory _UserRequest(
      {required final String first_name,
      required final String last_name,
      required final String email,
      required final String avatar}) = _$_UserRequest;

  factory _UserRequest.fromJson(Map<String, dynamic> json) =
      _$_UserRequest.fromJson;

  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get email;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_UserRequestCopyWith<_$_UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
