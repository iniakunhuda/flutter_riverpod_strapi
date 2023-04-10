// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

_$_UserDetailDTO _$$_UserDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_UserDetailDTO(
      data: DataDTO.fromJson(json['data'] as Map<String, dynamic>),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDetailDTOToJson(_$_UserDetailDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

_$_DataDTO _$$_DataDTOFromJson(Map<String, dynamic> json) => _$_DataDTO(
      id: json['id'] as int,
      attributes:
          AttributeDTO.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataDTOToJson(_$_DataDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$_MetaDTO _$$_MetaDTOFromJson(Map<String, dynamic> json) => _$_MetaDTO(
      pagination: json['pagination'] == null
          ? null
          : PaginationDTO.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MetaDTOToJson(_$_MetaDTO instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };

_$_AttributeDTO _$$_AttributeDTOFromJson(Map<String, dynamic> json) =>
    _$_AttributeDTO(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$$_AttributeDTOToJson(_$_AttributeDTO instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'publishedAt': instance.publishedAt.toIso8601String(),
    };

_$_PaginationDTO _$$_PaginationDTOFromJson(Map<String, dynamic> json) =>
    _$_PaginationDTO(
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      pageCount: json['pageCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_PaginationDTOToJson(_$_PaginationDTO instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
