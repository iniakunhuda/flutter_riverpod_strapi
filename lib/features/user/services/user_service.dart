import 'dart:convert';
import 'dart:developer';

import 'package:crud_riverpod/core/api/endpoints.dart';
import 'package:crud_riverpod/core/constant/constant.dart';
import 'package:crud_riverpod/features/user/dto/error_dto.dart';
import 'package:crud_riverpod/features/user/dto/user_dto.dart';
import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserService {
  late Dio _dio;

  UserService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseURL,
        responseType: ResponseType.json,
        headers: {
          "Authorization": "Bearer ${Constants.API_KEY}",
        },
      ),
    );
  }

  Future<List<UserModel>> getAll() async {
    final response = await _dio.get(Endpoints.userURL);
    final userList = UserDTO.fromJson(response.data);

    final movies = userList.data
        .map((user) => UserModel(
              id: user.id,
              first_name: user.attributes.firstName,
              last_name: user.attributes.lastName,
              email: user.attributes.email,
              avatar: user.attributes.avatar,
            ))
        .toList();

    return movies;
  }

  Future<UserModel> getOne(int userId) async {
    final response = await _dio.get("${Endpoints.userURL}/$userId");
    final user = UserDetailDTO.fromJson(response.data);

    return UserModel(
      id: user.data.id,
      first_name: user.data.attributes.firstName,
      last_name: user.data.attributes.lastName,
      email: user.data.attributes.email,
      avatar: user.data.attributes.avatar,
    );
  }

  Future<dynamic> createOne(UserRequest request) async {
    debugPrint('body: ${request.toJson()}');

    try {
      final response =
          await _dio.post(Endpoints.userURL, data: {'data': request.toJson()});

      UserDetailDTO user = UserDetailDTO.fromJson(response.data);
      debugPrint('data: $user.toJson()');

      return UserModel(
        id: user.data.id,
        first_name: user.data.attributes.firstName,
        last_name: user.data.attributes.lastName,
        email: user.data.attributes.email,
        avatar: user.data.attributes.avatar,
      );
    } on DioError catch (ex) {
      debugPrint(ex.response?.data.toString());
      return ErrorResponseDTO.fromJson(ex.response?.data);
    }
  }

  Future<dynamic> updateOne(int userId, UserRequest request) async {
    try {
      final response = await _dio.put(
        "${Endpoints.userURL}/$userId",
        data: {'data': request.toJson()},
      );

      UserDetailDTO user = UserDetailDTO.fromJson(response.data);
      debugPrint('data: $user.toJson()');

      return UserModel(
        id: user.data.id,
        first_name: user.data.attributes.firstName,
        last_name: user.data.attributes.lastName,
        email: user.data.attributes.email,
        avatar: user.data.attributes.avatar,
      );
    } on DioError catch (ex) {
      debugPrint(ex.response?.data.toString());
      return ErrorResponseDTO.fromJson(ex.response?.data);
    }
  }

  Future<dynamic> deleteOne(int userId) async {
    try {
      final response = await _dio.delete("${Endpoints.userURL}/$userId");
      return response.statusCode == 200;
    } on DioError catch (ex) {
      debugPrint(ex.response?.data.toString());
      return ErrorResponseDTO.fromJson(ex.response?.data);
    }
  }
}

final userServiceProvider = Provider<UserService>((ref) {
  return UserService();
});
