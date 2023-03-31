import 'package:crud_riverpod/models/update_user_model.dart';
import 'package:crud_riverpod/features/user/data/models/user_model.dart';
import 'package:crud_riverpod/requests/request_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkManager {
  late Dio _dio;
  final String API_KEY =
      "a13e7336b42ddff1222676f800a92703d57a63bced0aeb8a5e313e3ac45b83ff9678097a1f5c20661078ca7648e78817743b6e640b78f5f65c9da971f6effc5e17faf06e1b191c3c26a8f6a0b05eda4c41a9816e606fb1937e609d7c45dcbcb562ff8fa1b597a09142f4eeebd1498fdb5e8194c5cfeaaea9bcf4f83b2c72ef95";

  NetworkManager() {
    _dio = Dio();
  }

  Future<ListUserModel> getAll() async {
    final response = await _dio.get(
      "http://localhost:1337/api/contacts",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $API_KEY"
        },
      ),
    );
    return ListUserModel.fromJson(response.data);
  }

  Future<DetailUserModel> createOne(RequestUser request) async {
    debugPrint('body: ${request.toJson()}');

    try {
      final response = await Dio().post(
        "http://localhost:1337/api/contacts",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $API_KEY"
          },
        ),
        data: request.toJson(),
      );
      debugPrint('data: $response');
      return DetailUserModel.fromJson(response.data);
    } on DioError catch (ex) {
      debugPrint(ex.toString());
      throw Exception(ex.message);
    }
  }

  Future<UpdateUserModel> updateOne(int id, RequestUser request) async {
    final response = await Dio().put(
      "http://localhost:1337/api/contacts/${id}",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $API_KEY"
        },
      ),
      data: request.toJson(),
    );

    debugPrint('data: $response');
    return UpdateUserModel.fromJson(response.data);
  }
}
