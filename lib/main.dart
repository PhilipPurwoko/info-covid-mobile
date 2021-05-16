import 'package:flutter/material.dart';
import 'routes.dart';
import 'widgets/menu/menu_screen.dart';

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
      initialRoute: MenuScreen.routeName,
      routes: routes,
    );
  }
}
