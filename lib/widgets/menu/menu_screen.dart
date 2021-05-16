import 'package:flutter/material.dart';
import './menu_grid.dart';
import '../cegah/cegah.dart';

class MenuScreen extends StatelessWidget {
  static String routeName = '/menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Covid'),
      ),
      body: SafeArea(
        child: ListView(children: <Widget>[
          MenuGrid(),
          Cegah(),
        ]),
      ),
    );
  }
}
