import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/features/user/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_controller.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    @Default([]) List<UserModel> users,
    @Default(true) bool isLoading,
  }) = _UserState;
}

class UserController extends StateNotifier<UserState> {
  Ref ref;
  UserController({
    required this.ref,
  }) : super(UserState()) {
    getAll();
  }

  getAll() async {
    state = state.copyWith(isLoading: true);
    final response = await ref.read(userRepoProvider).getAll();
    debugPrint('RESPONSEEE {$response.toString()}');
    response.fold(
      (l) => debugPrint(l),
      (r) => state = state.copyWith(isLoading: false, users: r),
    );
  }

  Future<dynamic> getOne(int userId) async {
    final response = await ref.read(userRepoProvider).getOne(userId);
    return response.fold(
      (l) {
        debugPrint(l);
      },
      (r) {
        return r;
      },
    );
  }
}

final userControllerProvider =
    StateNotifierProvider<UserController, UserState>((ref) {
  return UserController(ref: ref);
});
