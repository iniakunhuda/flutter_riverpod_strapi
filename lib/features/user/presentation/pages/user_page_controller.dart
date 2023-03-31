import 'package:crud_riverpod/features/user/data/repositories/user_repository.dart';
import 'package:crud_riverpod/requests/request_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPageController extends StateNotifier<AsyncValue<dynamic>> {
  Ref ref;
  UserPageController({
    required this.ref,
  }) : super(const AsyncData(null)) {
    getAll();
  }

  Future<void> getAll() async {
    state = const AsyncLoading();
    final response = await ref.read(userRepoProvider).getAll();
    state = response.fold(
      (l) => AsyncError(l.toString(), StackTrace.current),
      (r) => AsyncData(r),
    );
  }
}

final userPageControllerProvider =
    StateNotifierProvider<UserPageController, AsyncValue<dynamic>>((ref) {
  return UserPageController(ref: ref);
});
