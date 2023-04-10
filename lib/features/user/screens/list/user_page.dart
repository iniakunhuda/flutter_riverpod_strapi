import 'package:crud_riverpod/features/user/controllers/user_controller.dart';
import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/features/user/screens/create/create_screen.dart';
import 'package:crud_riverpod/features/user/screens/detail/detail_screen.dart';
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
  //   await ref.read(userControllerProvider.notifier).getAll();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = ref.watch(userControllerProvider).users;
    bool isLoading = ref.watch(userControllerProvider).isLoading;

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
        onRefresh: () => ref.read(userControllerProvider.notifier).getAll(),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(userId: users[index].id),
                        ),
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
      ),
    );
  }
}
