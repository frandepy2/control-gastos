import 'package:control_gastos/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final route = Routes();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: route.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
