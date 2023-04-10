import 'package:crud_riverpod/features/user/repositories/user_repository.dart';
import 'package:flutter/material.dart';

import 'package:crud_riverpod/features/user/models/user_model.dart';
import 'package:crud_riverpod/requests/request_user.dart';
import 'package:crud_riverpod/services/network_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditScreen extends ConsumerStatefulWidget {
  UserModel user;

  EditScreen({
    Key? key,
    required this.user,
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
    fnameController.text = widget.user.attributes.firstName;
    lnameController.text = widget.user.attributes.lastName;
    emailController.text = widget.user.attributes.email;
    avatarController.text = widget.user.attributes.avatar;

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
                        RequestUser newUser = RequestUser(
                          first_name: fnameController.text,
                          last_name: lnameController.text,
                          email: emailController.text,
                          avatar: avatarController.text,
                        );

                        // try {
                        //   await NetworkManager().updateOne(user.id, newUser);
                        //   Navigator.of(context)
                        //       .popUntil((route) => route.isFirst);
                        //   showSnackbar(context, "Success! Updated contact");
                        // } catch (e) {
                        //   showSnackbar(context,
                        //       "Failed! Update contact failed \n Error ${e.toString()}");
                        // }
                        ref
                            .read(userRepoProvider)
                            .updateOne(widget.user.id, newUser)
                            .then((value) {
                          showSnackbar(context, "Success! Updated contact");
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
  }
}
