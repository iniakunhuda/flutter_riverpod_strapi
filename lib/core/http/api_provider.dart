import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_strapi/core/api/endpoints.dart';
import 'package:flutter_riverpod_strapi/core/constant/constant.dart';
import 'package:flutter_riverpod_strapi/core/helper/app_exception.dart';
import 'package:flutter_riverpod_strapi/core/http/api_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

enum ContentType { urlEncoded, json }

final apiProvider = Provider.family<ApiProvider, String>((ref, setBaseUrl) {
  return ApiProvider(ref, Endpoints.baseURL);
});

class ApiProvider {
  final Ref _ref;
  final String _baseUrl;
  late Dio _dio;

  ApiProvider(this._ref, this._baseUrl) {
    _dio = Dio();
    _dio.options.sendTimeout = const Duration(seconds: 10);
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.receiveTimeout = const Duration(seconds: 10);

    if (kDebugMode) {
      _dio.interceptors.add(PrettyDioLogger(requestBody: true));
    }
  }

  Future<APIResponse> post(
    String path,
    dynamic body, {
    String? newBaseUrl,
    String? token,
    String? tokenWithoutBearer,
    Map<String, String?>? query,
    ContentType contentType = ContentType.json,
  }) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return const APIResponse.error(AppException.connectivity());
    }
    String url;
    if (newBaseUrl != null) {
      url = newBaseUrl + path;
    } else {
      url = _baseUrl + path;
    }
    var content = 'application/x-www-form-urlencoded';
    if (contentType == ContentType.json) {
      content = 'application/json';
    }

    try {
      final headers = {
        'accept': '*/*',
        'Content-Type': content,
        'Authorization': 'Bearer ${Constants.apiKey}',
      };
      //Sometime for some specific endpoint it may require to use different Token
      if (token != null) {
        headers['Authorization'] = 'Bearer ${token}';
      }

      final response = await _dio.post(
        url,
        data: body,
        queryParameters: query,
        options: Options(validateStatus: (status) => true, headers: headers),
      );

      if (response.statusCode == null) {
        return const APIResponse.error(AppException.connectivity());
      }

      if (response.statusCode! < 300) {
        return APIResponse.success(response.data);
      } else {
        if (response.statusCode! == 401) {
          return const APIResponse.error(AppException.unauthorized());
        } else if (response.statusCode! == 429) {
          return const APIResponse.error(
            AppException.errorWithMessage(
              'Please try again later in a few minutes.',
            ),
          );
        } else if (response.statusCode! == 502 || response.statusCode! == 503) {
          return const APIResponse.error(AppException.error());
        } else {
          final responseData = response.data as Map<String, dynamic>;

          if (responseData.containsKey('errors')) {
            var errMessage = '';
            responseData['errors'].forEach((fieldName, messages) {
              errMessage += 'Field: $fieldName ';
              if (messages is List) {
                for (final message in messages) {
                  errMessage += 'Error: $message\n';
                }
              }
            });
            return APIResponse.error(AppException.errorWithMessage(errMessage));
          } else if (responseData.containsKey('message') &&
              response.data['message'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(response.data['message'] as String),
            );
          } else if (response.data['error']['message'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(
                response.data['error']['message'] as String,
              ),
            );
          } else {
            return const APIResponse.error(AppException.error());
          }
        }
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return const APIResponse.error(AppException.connectivity());
      }
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        return const APIResponse.error(AppException.connectivity());
      }

      if (e.response != null) {
        if (e.response!.data['message'] != null) {
          return APIResponse.error(AppException.errorWithMessage(
              e.response!.data['message'] as String));
        }
      }
      return APIResponse.error(AppException.errorWithMessage(e.message ?? ''));
    } on Error catch (e) {
      return APIResponse.error(
          AppException.errorWithMessage(e.stackTrace.toString()));
    }
  }

  Future<APIResponse> put(
    String path,
    dynamic body, {
    String? newBaseUrl,
    String? token,
    String? tokenWithoutBearer,
    Map<String, String?>? query,
    ContentType contentType = ContentType.json,
  }) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return const APIResponse.error(AppException.connectivity());
    }
    String url;
    if (newBaseUrl != null) {
      url = newBaseUrl + path;
    } else {
      url = _baseUrl + path;
    }
    var content = 'application/x-www-form-urlencoded';
    if (contentType == ContentType.json) {
      content = 'application/json';
    }

    try {
      final headers = {
        'accept': '*/*',
        'Content-Type': content,
        'Authorization': 'Bearer ${Constants.apiKey}',
      };
      //Sometime for some specific endpoint it may require to use different Token
      if (token != null) {
        headers['Authorization'] = 'Bearer ${token}';
      }

      final response = await _dio.put(
        url,
        data: body,
        queryParameters: query,
        options: Options(validateStatus: (status) => true, headers: headers),
      );

      if (response.statusCode == null) {
        return const APIResponse.error(AppException.connectivity());
      }

      if (response.statusCode! < 300) {
        return APIResponse.success(response.data);
      } else {
        if (response.statusCode! == 401) {
          return const APIResponse.error(AppException.unauthorized());
        } else if (response.statusCode! == 429) {
          return const APIResponse.error(
            AppException.errorWithMessage(
              'Please try again later in a few minutes.',
            ),
          );
        } else if (response.statusCode! == 502 || response.statusCode! == 503) {
          return const APIResponse.error(AppException.error());
        } else {
          final responseData = response.data as Map<String, dynamic>;

          if (responseData.containsKey('errors')) {
            var errMessage = '';
            responseData['errors'].forEach((fieldName, messages) {
              errMessage += 'Field: $fieldName ';
              if (messages is List) {
                for (final message in messages) {
                  errMessage += 'Error: $message\n';
                }
              }
            });
            return APIResponse.error(AppException.errorWithMessage(errMessage));
          } else if (responseData.containsKey('message') &&
              response.data['message'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(response.data['message'] as String),
            );
          } else if (response.data['status']['message'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(
                response.data['status']['message'] as String,
              ),
            );
          } else {
            return const APIResponse.error(AppException.error());
          }
        }
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return const APIResponse.error(AppException.connectivity());
      }
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        return const APIResponse.error(AppException.connectivity());
      }

      if (e.response != null) {
        if (e.response!.data['message'] != null) {
          return APIResponse.error(AppException.errorWithMessage(
              e.response!.data['message'] as String));
        }
      }
      return APIResponse.error(AppException.errorWithMessage(e.message ?? ''));
    } on Error catch (e) {
      return APIResponse.error(
          AppException.errorWithMessage(e.stackTrace.toString()));
    }
  }

  Future<APIResponse> get(
    String path, {
    String? newBaseUrl,
    String? token,
    Map<String, dynamic>? query,
    ContentType contentType = ContentType.json,
  }) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return const APIResponse.error(AppException.connectivity());
    }
    String url;
    if (newBaseUrl != null) {
      url = newBaseUrl + path;
    } else {
      url = _baseUrl + path;
    }

    var content = 'application/x-www-form-urlencoded';
    if (contentType == ContentType.json) {
      content = 'application/json; charset=utf-8';
    }

    final headers = {
      'accept': '*/*',
      'Content-Type': content,
      'Authorization': 'Bearer ${Constants.apiKey}',
    };
    if (token != null) {
      headers['Authorization'] = 'Bearer ${token}';
    }

    try {
      final response = await _dio.get(
        url,
        queryParameters: query,
        options: Options(validateStatus: (status) => true, headers: headers),
      );
      if (response == null) {
        return const APIResponse.error(AppException.error());
      }
      if (response.statusCode == null) {
        return const APIResponse.error(AppException.connectivity());
      }

      if (response.statusCode! < 300) {
        return APIResponse.success(response.data);
      } else {
        if (response.statusCode! == 404) {
          return const APIResponse.error(AppException.connectivity());
        } else if (response.statusCode! == 401) {
          return const APIResponse.error(AppException.unauthorized());
        } else if (response.statusCode! == 429) {
          return const APIResponse.error(
            AppException.errorWithMessage(
              'Please try again later in a few minutes.',
            ),
          );
        } else if (response.statusCode! == 502 || response.statusCode! == 503) {
          return const APIResponse.error(AppException.error());
        } else {
          if (response.data['error'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(
                response.data['error'] as String,
              ),
            );
          } else if (response.data['status']['message'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(
                response.data['status']['message'] as String,
              ),
            );
          } else {
            return const APIResponse.error(AppException.error());
          }
        }
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return const APIResponse.error(AppException.connectivity());
      }
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        return const APIResponse.error(AppException.connectivity());
      }
      return const APIResponse.error(AppException.error());
    }
  }

  Future<APIResponse> delete(
    String path, {
    String? newBaseUrl,
    String? token,
    Map<String, dynamic>? query,
    ContentType contentType = ContentType.json,
  }) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return const APIResponse.error(AppException.connectivity());
    }
    String url;
    if (newBaseUrl != null) {
      url = newBaseUrl + path;
    } else {
      url = _baseUrl + path;
    }

    var content = 'application/x-www-form-urlencoded';
    if (contentType == ContentType.json) {
      content = 'application/json; charset=utf-8';
    }

    final headers = {
      'accept': '*/*',
      'Content-Type': content,
      'Authorization': 'Bearer ${Constants.apiKey}',
    };
    if (token != null) {
      headers['Authorization'] = 'Bearer ${token}';
    }

    try {
      final response = await _dio.delete(
        url,
        queryParameters: query,
        options: Options(validateStatus: (status) => true, headers: headers),
      );
      if (response == null) {
        return const APIResponse.error(AppException.error());
      }
      if (response.statusCode == null) {
        return const APIResponse.error(AppException.connectivity());
      }

      if (response.statusCode! < 300) {
        return APIResponse.success(response.data);
      } else {
        if (response.statusCode! == 404) {
          return const APIResponse.error(AppException.connectivity());
        } else if (response.statusCode! == 401) {
          return const APIResponse.error(AppException.unauthorized());
        } else if (response.statusCode! == 429) {
          return const APIResponse.error(
            AppException.errorWithMessage(
              'Please try again later in a few minutes.',
            ),
          );
        } else if (response.statusCode! == 502 || response.statusCode! == 503) {
          return const APIResponse.error(AppException.error());
        } else {
          if (response.data['error'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(
                response.data['error'] as String,
              ),
            );
          } else if (response.data['status']['message'] != null) {
            return APIResponse.error(
              AppException.errorWithMessage(
                response.data['status']['message'] as String,
              ),
            );
          } else {
            return const APIResponse.error(AppException.error());
          }
        }
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return const APIResponse.error(AppException.connectivity());
      }
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        return const APIResponse.error(AppException.connectivity());
      }
      return const APIResponse.error(AppException.error());
    }
  }
}
