import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/features/user/repositories/user_repository.dart';
import 'package:crud_riverpod/features/user/controllers/user_controller.dart';
import 'package:crud_riverpod/features/user/screens/edit/edit_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailScreen extends ConsumerStatefulWidget {
  final int userId;

  DetailScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  ConsumerState<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {
  void showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final Future user =
        ref.read(userControllerProvider.notifier).getOne(widget.userId);

    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return buildContainer(context, snapshot.data as UserModel);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Container buildContainer(BuildContext context, UserModel user) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            (user.avatar != "")
                ? user.avatar
                : "https://i.stack.imgur.com/34AD2.jpg",
            height: 300,
            width: 1000,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${user.first_name} ${user.last_name}",
                    style: Theme.of(context).textTheme.titleLarge),
                Text(
                  "${user.email}",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditScreen(user: user),
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                        label: const Text("Edit"),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton.icon(
                        onPressed: () {
                          ref
                              .read(userRepoProvider)
                              .deleteOne(user.id)
                              .then((value) {
                            showSnackbar(context, "Success! Deleted contact");

                            Navigator.pop(context);
                          });
                        },
                        icon: const Icon(Icons.delete),
                        label: const Text("Delete"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
