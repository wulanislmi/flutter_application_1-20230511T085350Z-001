import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/add_notes_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static String home = "home";
  static String addnote = 'add-note';

  static Page homePageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return const MaterialPage(
      child: HomePage(),
    );
  }

  static Page addNoteBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return const MaterialPage(
      child: AddNotePage(),
    );
  }

  final GoRouter goRouter = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: home,
        path: "/",
        pageBuilder: homePageBuilder,
        routes: [
          GoRoute(
            name: addnote,
            path: '/add-note',
            pageBuilder: addNoteBuilder,
          ),
        ],
      ),
    ],
  );
}
