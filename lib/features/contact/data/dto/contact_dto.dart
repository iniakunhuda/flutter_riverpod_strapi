import 'dart:convert';

import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_dto.freezed.dart';
part 'contact_dto.g.dart';

@freezed
class ContactDTO with _$ContactDTO {
  factory ContactDTO({
    required List<DataDTO> data,
    required MetaDTO meta,
  }) = _ContactDTO;

  factory ContactDTO.fromJson(Map<String, dynamic> json) =>
      _$ContactDTOFromJson(json);
}

@freezed
class ContactDetailDTO with _$ContactDetailDTO {
  factory ContactDetailDTO({
    required DataDTO data,
    required MetaDTO meta,
  }) = _ContactDetailDTO;

  factory ContactDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailDTOFromJson(json);
}

@freezed
class DataDTO with _$DataDTO {
  factory DataDTO({
    required int id,
    required AttributeDTO attributes,
  }) = _DataDTO;

  DataDTO._();

  ContactModel toModel() {
    return ContactModel(
      id: id,
      first_name: attributes.firstName,
      last_name: attributes.lastName,
      email: attributes.email,
      avatar: attributes.avatar,
    );
  }

  factory DataDTO.fromJson(Map<String, dynamic> json) =>
      _$DataDTOFromJson(json);
}

@freezed
class MetaDTO with _$MetaDTO {
  factory MetaDTO({
    PaginationDTO? pagination,
  }) = _MetaDTO;

  factory MetaDTO.fromJson(Map<String, dynamic> json) =>
      _$MetaDTOFromJson(json);
}

@freezed
class AttributeDTO with _$AttributeDTO {
  factory AttributeDTO({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String avatar,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime publishedAt,
  }) = _AttributeDTO;

  factory AttributeDTO.fromJson(Map<String, dynamic> json) =>
      _$AttributeDTOFromJson(json);
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
