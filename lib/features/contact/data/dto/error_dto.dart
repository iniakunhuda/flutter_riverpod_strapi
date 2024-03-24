import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_dto.freezed.dart';
part 'error_dto.g.dart';

@freezed
class ErrorResponseDTO with _$ErrorResponseDTO {
  factory ErrorResponseDTO({
    required dynamic data,
    required ErrorDTO error,
  }) = _ErrorResponseDTO;

  factory ErrorResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseDTOFromJson(json);
}


@freezed
class ErrorDTO with _$ErrorDTO {
  factory ErrorDTO({
    required int status,
    required String name,
    required String message,
    required ErrorDetailDTO details,
  }) = _ErrorDTO;

  factory ErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorDTOFromJson(json);
}

@freezed
class ErrorDetailDTO with _$ErrorDetailDTO {
  factory ErrorDetailDTO() = _ErrorDetailDTO;
  factory ErrorDetailDTO.fromJson(Map<String, dynamic> json) => _$ErrorDetailDTOFromJson(json);
}
