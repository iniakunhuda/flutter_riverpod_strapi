import 'dart:developer';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod_strapi/core/database/database.dart';
import 'package:flutter_riverpod_strapi/core/helper/app_router.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:flutter_riverpod_strapi/features/contact/presentation/screen/create_screen.dart';
import 'package:flutter_riverpod_strapi/features/contact/presentation/screen/detail_screen.dart';
import 'package:flutter_riverpod_strapi/features/contact/presentation/screen/edit_screen.dart';
import 'package:flutter_riverpod_strapi/features/contact/presentation/screen/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await isarInit();
  runApp(const ProviderScope(child: MyApp()));
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: AppRouter.home.name,
      path: AppRouter.home.path,
      builder: (context, state) => const ListScreen(),
    ),
    GoRoute(
      name: AppRouter.create.name,
      path: AppRouter.create.path,
      builder: (context, state) => const CreateScreen(),
    ),
    GoRoute(
      name: AppRouter.detail.name,
      path: AppRouter.detail.path,
      builder: (context, state) => DetailScreen(
        userId: int.parse(state.params["id"]!),
      ),
    ),
    GoRoute(
      name: AppRouter.edit.name,
      path: AppRouter.edit.path,
      builder: (context, state) => EditScreen(
        contact: state.extra as ContactModel,
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
