import 'package:crud_riverpod/features/user/controllers/user_controller.dart';
import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/features/user/repositories/user_repository.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditScreen extends ConsumerStatefulWidget {
  // UserModel user;
  final int userId;

  EditScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  ConsumerState<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends ConsumerState<EditScreen> {
  final fnameController = TextEditingController();

  final lnameController = TextEditingController();

  final emailController = TextEditingController();

  final avatarController = TextEditingController();

  void clearInput() {
    fnameController.clear();
    lnameController.clear();
    emailController.clear();
    avatarController.clear();
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
    final Future userState =
        ref.read(userControllerProvider.notifier).getOne(widget.userId);

    return FutureBuilder(
      future: userState,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final user = snapshot.data as UserModel;

          fnameController.text = user.first_name;
          lnameController.text = user.last_name;
          emailController.text = user.email;
          avatarController.text = user.avatar;

          return Scaffold(
            appBar: AppBar(
              title: const Text("Edit Contact"),
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: fnameController,
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            labelStyle: TextStyle(
                              color: Colors.blueGrey,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextFormField(
                          controller: lnameController,
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(
                              color: Colors.blueGrey,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  TextFormField(
                    controller: avatarController,
                    decoration: const InputDecoration(
                      labelText: 'Avatar',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async {
                              UserRequest newUser = UserRequest(
                                first_name: fnameController.text,
                                last_name: lnameController.text,
                                email: emailController.text,
                                avatar: avatarController.text,
                              );

                              ref
                                  .read(userRepoProvider)
                                  .updateOne(user.id, newUser)
                                  .then((value) {
                                showSnackbar(
                                    context, "Success! Updated contact");
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                              });
                            },
                            child: Text("Save"),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Cancel"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor:
                                  const Color.fromARGB(221, 209, 209, 209),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
