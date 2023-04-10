import 'package:crud_riverpod/features/user/services/user_service.dart';
import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/requests/request_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// generate abstract class from class UserRepository

abstract class UserRepository {
  Future<Either<String, ListUserModel>> getAll();
  Future<Either<String, DetailUserModel>> createOne(
    RequestUser requestUser,
  );
  Future<Either<String, DetailUserModel>> updateOne(
    int userId,
    RequestUser requestUser,
  );
  Future<Either<String, DetailUserModel>> deleteOne(int userId);
}


class UserRepositoryImpl implements UserRepository {
  final UserService userService;

  UserRepositoryImpl({
    required this.userService,
  });

  Future<Either<String, ListUserModel>> getAll() async {
    try {
      final response = await userService.getAll();
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, DetailUserModel>> createOne(
    RequestUser requestUser,
  ) async {
    try {
      final response = await userService.createOne(requestUser);
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, DetailUserModel>> updateOne(
    int userId,
    RequestUser requestUser,
  ) async {
    try {
      final response = await userService.updateOne(userId, requestUser);
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, DetailUserModel>> deleteOne(int userId) async {
    try {
      final response = await userService.deleteOne(userId);
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

final userRepoProvider = Provider<UserRepository>((ref) {
  final userService = ref.watch(userServiceProvider);
  return UserRepositoryImpl(userService: userService);
});
