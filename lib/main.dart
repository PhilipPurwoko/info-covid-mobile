import 'package:flutter/material.dart';
import 'routes.dart';
import 'widgets/main_menu/main_menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Covid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MainMenu.routeName,
      routes: routes,
    );
  }
}
