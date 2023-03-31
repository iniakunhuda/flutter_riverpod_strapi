import 'package:crud_riverpod/features/user/data/data_sources/user_remote_data_source.dart';
import 'package:crud_riverpod/features/user/data/models/user_model.dart';
import 'package:crud_riverpod/requests/request_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRepository {
  final UserRemoteDataSource dataSource;

  UserRepository({
    required this.dataSource,
  });

  Future<Either<String, ListUserModel>> getAll() async {
    try {
      final response = await dataSource.getAll();
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, DetailUserModel>> createOne(
    RequestUser requestUser,
  ) async {
    try {
      final response = await dataSource.createOne(requestUser);
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
      final response = await dataSource.updateOne(userId, requestUser);
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, DetailUserModel>> deleteOne(int userId) async {
    try {
      final response = await dataSource.deleteOne(userId);
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

final userRepoProvider = Provider<UserRepository>((ref) {
  final dataSource = ref.watch(userRemoteDataSourceProvider);
  return UserRepository(dataSource: dataSource);
});
