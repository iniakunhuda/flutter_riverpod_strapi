import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/provider/contact_provider.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/repository/contact_repository_impl.dart';

class CreateScreen extends ConsumerStatefulWidget {
  const CreateScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateScreenState();
}

class _CreateScreenState extends ConsumerState<CreateScreen> {
  final fnameController = TextEditingController(text: "");
  final lnameController = TextEditingController(text: "");
  final emailController = TextEditingController(text: "");
  final avatarController = TextEditingController(text: "");

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Contact"),
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
                      onPressed: () {
                        ContactModel newUser = ContactModel(
                          id: 0,
                          first_name: fnameController.text,
                          last_name: lnameController.text,
                          email: emailController.text,
                          avatar: avatarController.text,
                        );

                        ref
                            .read(contactRepositoryProvider)
                            .createOne(request: newUser)
                            .then((value) {
                          value.fold((l) {
                            showSnackbar(context, "Error! ${l.toString()}");
                          }, (r) {
                            clearInput();
                            showSnackbar(
                                context, "Success! Created new contact");
                            Navigator.pop(context);
                            ref.read(contactProvider.notifier).getAll();
                          });
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
