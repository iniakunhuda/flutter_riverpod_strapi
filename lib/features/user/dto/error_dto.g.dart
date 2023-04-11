// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResponseDTO _$$_ErrorResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_ErrorResponseDTO(
      data: json['data'],
      error: ErrorDTO.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorResponseDTOToJson(_$_ErrorResponseDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$_ErrorDTO _$$_ErrorDTOFromJson(Map<String, dynamic> json) => _$_ErrorDTO(
      status: json['status'] as int,
      name: json['name'] as String,
      message: json['message'] as String,
      details: ErrorDetailDTO.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorDTOToJson(_$_ErrorDTO instance) =>
    <String, dynamic>{
      'status': instance.status,
      'name': instance.name,
      'message': instance.message,
      'details': instance.details,
    };

_$_ErrorDetailDTO _$$_ErrorDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_ErrorDetailDTO();

Map<String, dynamic> _$$_ErrorDetailDTOToJson(_$_ErrorDetailDTO instance) =>
    <String, dynamic>{};
