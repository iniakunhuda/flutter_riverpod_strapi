import 'dart:convert';
import 'dart:developer';

import 'package:crud_riverpod/core/api/endpoints.dart';
import 'package:crud_riverpod/core/constant/constant.dart';
import 'package:crud_riverpod/core/database/database.dart';
import 'package:crud_riverpod/features/user/db_schema/user_db.dart';
import 'package:crud_riverpod/features/user/dto/error_dto.dart';
import 'package:crud_riverpod/features/user/dto/user_dto.dart';
import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

class OfflineUserService {
  late var _isar;

  UserService() {
    _isar = isarDB.users;
  }

  Future<List<UserModel>> getAll() async {
    final response = await isarDB.users.where().findAll();
    final users = response
        .map((user) => UserModel(
              id: user.id,
              first_name: user.firstName!,
              last_name: user.lastName!,
              email: user.email!,
              avatar: user.avatar ?? '',
            ))
        .toList();

    return users;
  }

  Future<UserModel> getOne(int userId) async {
    final user = await isarDB.users.get(userId);

    return UserModel(
      id: user?.id ?? 0,
      first_name: user?.firstName ?? '',
      last_name: user?.lastName ?? '',
      email: user?.email ?? '',
      avatar: user?.avatar ?? '',
    );
  }

  Future<dynamic> createOne(UserRequest request) async {
    debugPrint('body: ${request.toJson()}');

    try {
      final newUser = UserDB()
        ..firstName = request.first_name
        ..lastName = request.last_name
        ..email = request.email
        ..avatar = request.avatar;

      await isarDB.writeTxn(() async {
        await isarDB.users.put(newUser);
      });

      return UserModel(
        id: 0,
        first_name: request.first_name,
        last_name: request.last_name,
        email: request.email,
        avatar: request.avatar,
      );
    } on DioError catch (ex) {
      debugPrint(ex.response?.data.toString());
      return ex.response?.data;
    }
  }

  Future<dynamic> updateOne(int userId, UserRequest request) async {
    try {
      final user = await isarDB.users.get(userId);

      user!.firstName = request.first_name;
      user.lastName = request.last_name;
      user.email = request.email;
      user.avatar = request.avatar;

      await isarDB.writeTxn(() async {
        await isarDB.users.put(user);
      });

      return UserModel(
        id: user.id,
        first_name: user.firstName ?? '',
        last_name: user.lastName ?? '',
        email: user.email ?? '',
        avatar: user.avatar ?? '',
      );
    } on DioError catch (ex) {
      debugPrint(ex.response?.data.toString());
      return ex.response?.data;
    }
  }

  Future<dynamic> deleteOne(int userId) async {
    try {
      var result;
      await isarDB.writeTxn(() async {
        result = await isarDB.users.delete(123);
      });
      return result;
    } on DioError catch (ex) {
      debugPrint(ex.response?.data.toString());
      return ex.response?.data;
    }
  }
}

final offlineUserServiceProvider = Provider<OfflineUserService>((ref) {
  return OfflineUserService();
});
