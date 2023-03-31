import 'package:crud_riverpod/features/user/data/models/user_model.dart';
import 'package:crud_riverpod/features/user/presentation/pages/user_page_controller.dart';
import 'package:crud_riverpod/pages/create/create_screen.dart';
import 'package:crud_riverpod/pages/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  // _asyncMethod() async {
  //   await ref.read(userPageControllerProvider.notifier).getAll();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userPageControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        actions: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateScreen(),
            ),
          );
        },
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(userPageControllerProvider.notifier).getAll(),
        child: userState.when(
          data: (data) {
            if (data == null) {
              return const Center(
                child: Text("Data Not Found"),
              );
            }

            List<UserModel> users = data.data;

            return ListView.builder(
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(user: users[index]),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          (users[index].attributes.avatar != "")
                              ? users[index].attributes.avatar
                              : "https://i.stack.imgur.com/34AD2.jpg",
                        ),
                      ),
                      title: Text(
                          '${users[index].attributes.firstName} ${users[index].attributes.lastName}'),
                      subtitle: Text(users[index].attributes.email),
                    ),
                  ),
                );
              },
              itemCount: users.length,
            );
          },
          error: (error, _) => Center(child: Text(error.toString())),
          loading: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
