import 'package:flutter/material.dart';
import 'package:notebook/utils/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Notebook",
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
