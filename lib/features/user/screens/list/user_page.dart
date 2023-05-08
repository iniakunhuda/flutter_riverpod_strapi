import 'package:crud_riverpod/core/database/database.dart';
import 'package:crud_riverpod/core/helper/network_detector.dart';
import 'package:crud_riverpod/features/user/controllers/user_controller.dart';
import 'package:crud_riverpod/features/user/db_schema/user_db.dart';
import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/features/user/screens/create/create_screen.dart';
import 'package:crud_riverpod/features/user/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';

class UserPage extends ConsumerStatefulWidget {
  const UserPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserPageState();
}

class _UserPageState extends ConsumerState<UserPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = ref.watch(userControllerProvider).users;
    bool isLoading = ref.watch(userControllerProvider).isLoading;

    var connectivity = ref.read(connectivityStatusProviders);
    var connectivityChecked =
        ref.watch(connectivityStatusProviders.notifier).isChecked;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // debugPrint('connectivityChecked $connectivityChecked');
      if (connectivityChecked == false) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              connectivity == ConnectivityStatus.isConnected
                  ? 'Is Connected to Internet'
                  : 'Is Disconnected from Internet',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: connectivity == ConnectivityStatus.isConnected
                ? Colors.green
                : Colors.red,
          ),
        );
        // ref.read(connectivityStatusProviders.notifier).setChecked(true);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        actions: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.pushNamed("create").then(
                (value) => {
                  ref.read(userControllerProvider.notifier).getAll(),
                },
              );
        },
      ),
      body: Wrap(
        children: [
          UserListWidget(ref: ref, isLoading: isLoading, users: users),
        ],
      ),
      // body: UserListWidget(ref: ref, isLoading: isLoading, users: users),
    );
  }
}

class UserListWidget extends StatelessWidget {
  const UserListWidget({
    super.key,
    required this.ref,
    required this.isLoading,
    required this.users,
  });

  final WidgetRef ref;
  final bool isLoading;
  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => ref.read(userControllerProvider.notifier).getAll(),
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      "detail",
                      params: {"id": users[index].id.toString()},
                    ).then(
                      (value) => {
                        ref.read(userControllerProvider.notifier).getAll(),
                      },
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          (users[index].avatar != "")
                              ? users[index].avatar
                              : "https://i.stack.imgur.com/34AD2.jpg",
                        ),
                      ),
                      title: Text(
                          '${users[index].first_name} ${users[index].last_name}'),
                      subtitle: Text(users[index].email),
                    ),
                  ),
                );
              },
              itemCount: users.length,
            ),
    );
  }
}
