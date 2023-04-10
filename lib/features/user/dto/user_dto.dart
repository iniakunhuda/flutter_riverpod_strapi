import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  factory UserDTO({
    required List<DataDTO> data,
    required MetaDTO meta,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}

@freezed
class UserDetailDTO with _$UserDetailDTO {
  factory UserDetailDTO({
    required DataDTO data,
    required MetaDTO meta,
  }) = _UserDetailDTO;

  factory UserDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDTOFromJson(json);
}

@freezed
class DataDTO with _$DataDTO {
  factory DataDTO({
    required int id,
    required AttributeDTO attributes,
  }) = _DataDTO;

  factory DataDTO.fromJson(Map<String, dynamic> json) =>
      _$DataDTOFromJson(json);
  // Map<String, dynamic> toJson() => _$$_DataDTOToJson(this);
}

@freezed
class MetaDTO with _$MetaDTO {
  factory MetaDTO({
    PaginationDTO? pagination,
  }) = _MetaDTO;

  factory MetaDTO.fromJson(Map<String, dynamic> json) =>
      _$MetaDTOFromJson(json);
  // Map<String, dynamic> toJson() => _$$_MetaDTOToJson(this);
}

@freezed
class AttributeDTO with _$AttributeDTO {
  factory AttributeDTO({
    @JsonKey(name: 'first_name')  required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String avatar,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime publishedAt,
  }) = _AttributeDTO;

  factory AttributeDTO.fromJson(Map<String, dynamic> json) =>
      _$AttributeDTOFromJson(json);
  // Map<String, dynamic> toJson() => _$$_AttributeDTOToJson(this);
}

@freezed
class PaginationDTO with _$PaginationDTO {
  factory PaginationDTO({
    required int page,
    required int pageSize,
    required int pageCount,
    required int total,
  }) = _PaginationDTO;

  factory PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationDTOFromJson(json);
}

// class UpdateUserModel {
//   UpdateUserModel({
//     required this.data,
//     required this.meta,
//   });

//   Data data;
//   Meta meta;

//   factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
//       UpdateUserModel(
//         data: Data.fromJson(json["data"]),
//         meta: Meta.fromJson(json["meta"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data.toJson(),
//         "meta": meta.toJson(),
//       };
// }

// class Data {
//   Data({
//     required this.id,
//     required this.attributes,
//   });

//   int id;
//   Attributes attributes;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         attributes: Attributes.fromJson(json["attributes"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "attributes": attributes.toJson(),
//       };
// }

// class Attributes {
//   Attributes({
//     required this.firstName,
//     required this.lastName,
//     required this.email,
//     required this.avatar,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.publishedAt,
//   });

//   String firstName;
//   String lastName;
//   String email;
//   String avatar;
//   DateTime createdAt;
//   DateTime updatedAt;
//   DateTime publishedAt;

//   factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         email: json["email"],
//         avatar: json["avatar"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         publishedAt: DateTime.parse(json["publishedAt"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "first_name": firstName,
//         "last_name": lastName,
//         "email": email,
//         "avatar": avatar,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "publishedAt": publishedAt.toIso8601String(),
//       };
// }

// class Meta {
//   Meta();

//   factory Meta.fromJson(Map<String, dynamic> json) => Meta();

//   Map<String, dynamic> toJson() => {};
// }
