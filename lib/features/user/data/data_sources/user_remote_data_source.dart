import 'dart:convert';

import 'package:crud_riverpod/core/api/endpoints.dart';
import 'package:crud_riverpod/core/constant/constant.dart';
import 'package:crud_riverpod/features/user/data/models/user_model.dart';
import 'package:crud_riverpod/requests/request_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRemoteDataSource {
  late Dio _dio;

  UserRemoteDataSource() {
    _dio = Dio(BaseOptions(
        baseUrl: Endpoints.baseURL,
        responseType: ResponseType.json,
        headers: {"Authorization": "Bearer ${Constants.API_KEY}"}));
  }

  Future<ListUserModel> getAll() async {
    final response = await _dio.get(Endpoints.userURL);
    return ListUserModel.fromJson(response.data);
  }

  Future<DetailUserModel> createOne(RequestUser request) async {
    final response = await _dio.post(Endpoints.userURL, data: request.toJson());
    // TODO: How to handle error 400 and show message?
    return DetailUserModel.fromJson(response.data);
  }

  Future<DetailUserModel> updateOne(int userId, RequestUser request) async {
    final response =
        await _dio.put("${Endpoints.userURL}/$userId", data: request.toJson());
    return DetailUserModel.fromJson(response.data);
  }

  Future<DetailUserModel> deleteOne(int userId) async {
    final response = await _dio.delete("${Endpoints.userURL}/$userId");
    return DetailUserModel.fromJson(response.data);
  }
}

final userRemoteDataSourceProvider = Provider<UserRemoteDataSource>((ref) {
  return UserRemoteDataSource();
});
