import 'dart:developer';

import 'package:crud_riverpod/core/helper/network_detector.dart';
import 'package:crud_riverpod/features/user/dto/error_dto.dart';
import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/features/user/services/offline_user_service.dart';
import 'package:crud_riverpod/features/user/services/user_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// generate abstract class from class UserRepository

abstract class UserRepository {
  Future<Either<String, List<UserModel>>> getAll();
  Future<Either<String, UserModel>> getOne(int userId);
  Future<Either<String, UserModel>> createOne(UserRequest requestUser);
  Future<Either<String, UserModel>> updateOne(
    int userId,
    UserRequest requestUser,
  );
  Future<Either<String, bool>> deleteOne(int userId);
}

class UserRepositoryImpl implements UserRepository {
  final UserService userService;
  final OfflineUserService offlineUserService;
  Ref ref;

  UserRepositoryImpl({
    required this.userService,
    required this.offlineUserService,
    required this.ref,
  });

  Future<Either<String, List<UserModel>>> getAll() async {
    try {
      List<UserModel> response;
      var connectivity = ref.watch(connectivityStatusProviders);
      if (connectivity == ConnectivityStatus.isDisconnected) {
        response = await offlineUserService.getAll();
      } else {
        response = await userService.getAll();
      }

      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, UserModel>> getOne(int userId) async {
    try {
      var response;

      var connectivity = ref.watch(connectivityStatusProviders);
      if (connectivity == ConnectivityStatus.isDisconnected) {
        response = await offlineUserService.getOne(userId);
      } else {
        response = await userService.getOne(userId);
      }

      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, UserModel>> createOne(UserRequest requestUser) async {
    var response;
    var connectivity = ref.watch(connectivityStatusProviders);
    if (connectivity == ConnectivityStatus.isDisconnected) {
      response = await offlineUserService.createOne(requestUser);
    } else {
      response = await userService.createOne(requestUser);
    }

    if (response is ErrorResponseDTO) {
      return Left(response.error.message);
    } else {
      return Right(response);
    }
  }

  Future<Either<String, UserModel>> updateOne(
    int userId,
    UserRequest requestUser,
  ) async {
    var response;
    var connectivity = ref.watch(connectivityStatusProviders);
    if (connectivity == ConnectivityStatus.isDisconnected) {
      response = await offlineUserService.updateOne(userId, requestUser);
    } else {
      response = await userService.updateOne(userId, requestUser);
    }

    if (response is ErrorResponseDTO) {
      return Left(response.error.message);
    } else {
      return Right(response);
    }
  }

  Future<Either<String, bool>> deleteOne(int userId) async {
    final response = await userService.deleteOne(userId);
    if (response is ErrorResponseDTO) {
      return Left(response.error.message);
    } else {
      return Right(response);
    }
  }
}

final userRepoProvider = Provider<UserRepository>((ref) {
  final userService = ref.watch(userServiceProvider);
  final offlineUserService = ref.watch(offlineUserServiceProvider);

  return UserRepositoryImpl(
    userService: userService,
    offlineUserService: offlineUserService,
    ref: ref,
  );
});
