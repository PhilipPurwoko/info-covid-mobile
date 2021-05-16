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
        primaryColor: Color.fromRGBO(221, 127, 127, 1),
        accentColor: Color.fromRGBO(244, 189, 189, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 16,
              ),
              headline5: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(221, 127, 127, 1),
              ),
              headline6: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
      ),
      initialRoute: MenuScreen.routeName,
      routes: routes,
    );
  }
}
