import 'package:flutter_riverpod_strapi/core/helper/app_router.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/provider/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/repository/contact_repository_impl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class ListScreen extends ConsumerStatefulWidget {
  const ListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListScreenState();
}

class _ListScreenState extends ConsumerState<ListScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(contactProvider.notifier).getAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    final contacts = ref.watch(contactProvider).contacts;
    bool isLoading = ref.watch(contactProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        actions: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.pushNamed(AppRouter.create.name);
        },
      ),
      body: Wrap(
        children: [
          UserListWidget(ref: ref, isLoading: isLoading, users: contacts),
        ],
      ),
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
  final List<ContactModel> users;

  void deleteItem(BuildContext context, ContactModel user) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete ${user.first_name} ${user.last_name}"),
          content: const Text("Would you like to delete data permanently?"),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Yes"),
              onPressed: () {
                ref
                    .read(contactRepositoryProvider)
                    .deleteOne(contactId: user.id.toString())
                    .then((value) {
                  showSnackbar(context, "Success! Deleted contact");
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  ref.read(contactProvider.notifier).getAll();
                });
              },
            ),
          ],
        );
      },
    );
  }

  void showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => ref.read(contactProvider.notifier).getAll(),
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        flex: 1,
                        onPressed: (_) {
                          deleteItem(context, users[index]);
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(
                        AppRouter.detail.name,
                        params: {"id": users[index].id.toString()},
                      ).then(
                        (value) => {
                          ref.read(contactProvider.notifier).getAll(),
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
                  ),
                );
              },
              itemCount: users.length,
            ),
    );
  }
}
