import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:notebook/pages/home_page.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    initialLocation: "/",
    routes:[
      //homepage
      GoRoute(name: "home",path: "/",builder: (context, state) => const HomePage(),),
    ]
  );
}
