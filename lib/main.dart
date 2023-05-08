import 'package:crud_riverpod/core/database/database.dart';
import 'package:crud_riverpod/features/user/db_schema/user_db.dart';
import 'package:crud_riverpod/features/user/screens/create/create_screen.dart';
import 'package:crud_riverpod/features/user/screens/detail/detail_screen.dart';
import 'package:crud_riverpod/features/user/screens/edit/edit_screen.dart';
import 'package:crud_riverpod/features/user/screens/list/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isarInit();
  runApp(const ProviderScope(child: MyApp()));
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) => const UserPage(),
    ),
    GoRoute(
      name: "create",
      path: "/create",
      builder: (context, state) => const CreateScreen(),
    ),
    GoRoute(
      name: "detail",
      path: "/detail/:id",
      builder: (context, state) => DetailScreen(
        userId: int.parse(state.params["id"]!),
      ),
    ),
    GoRoute(
      name: "edit",
      path: "/edit/:id",
      builder: (context, state) => EditScreen(
        userId: int.parse(state.params["id"]!),
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
