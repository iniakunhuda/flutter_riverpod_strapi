import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_strapi/core/helper/app_router.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/provider/contact_provider.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/repository/contact_repository_impl.dart';
import 'package:go_router/go_router.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ref.read(contactProvider.notifier).getOne(widget.userId.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(contactProvider).detailContact;

    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                (user?.avatar != "")
                    ? user?.avatar ?? "https://i.stack.imgur.com/34AD2.jpg"
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
                    Text("${user?.first_name} ${user?.last_name}",
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      "${user?.email}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              if (user?.id != null) {
                                context.pushNamed(
                                  AppRouter.edit.name,
                                  params: {"id": user!.id.toString()},
                                  extra: user,
                                );
                              }
                            },
                            icon: const Icon(Icons.edit),
                            label: const Text("Edit"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                        "Delete ${user?.first_name} ${user?.last_name}"),
                                    content: const Text(
                                        "Would you like to delete data permanently?"),
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
                                          if (user?.id != null) {
                                            ref
                                                .read(contactRepositoryProvider)
                                                .deleteOne(
                                                    contactId:
                                                        user!.id.toString())
                                                .then((value) {
                                              showSnackbar(context,
                                                  "Success! Deleted contact");

                                              Navigator.of(context).popUntil(
                                                  (route) => route.isFirst);
                                            });
                                          }
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
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
        ));
  }
}
