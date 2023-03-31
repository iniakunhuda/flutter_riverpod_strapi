import 'dart:math';

import 'package:crud_riverpod/features/user/data/models/user_model.dart';
import 'package:crud_riverpod/pages/create/create_screen.dart';
import 'package:crud_riverpod/pages/detail/detail_screen.dart';
import 'package:crud_riverpod/services/network_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> users = [];
  bool isLoading = false;

  Future<void> refreshData() async {
    setState(() {
      isLoading = true;
    });

    final result = await NetworkManager().getAll();
    users = result.data;

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  void callbackCreate(context) {
    refreshData();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
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
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
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
            ),
    );
  }
}
