import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/features/user/repositories/user_repository.dart';
import 'package:crud_riverpod/features/user/presentation/controller/user_page_controller.dart';
import 'package:crud_riverpod/features/user/screens/edit/edit_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailScreen extends ConsumerStatefulWidget {
  final UserModel user;

  DetailScreen({
    Key? key,
    required this.user,
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
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              (widget.user.attributes.avatar != "")
                  ? widget.user.attributes.avatar
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
                  Text(
                      "${widget.user.attributes.firstName} ${widget.user.attributes.lastName}",
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    "${widget.user.attributes.email}",
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
                                builder: (context) =>
                                    EditScreen(user: widget.user),
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
                                .deleteOne(widget.user.id)
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
      ),
    );
  }
}
