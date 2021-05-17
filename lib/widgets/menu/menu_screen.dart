import 'package:flutter/material.dart';
import '../cegah/cegah_screen.dart';
import './menu_card.dart';
import './menu_grid.dart';

class MenuScreen extends StatelessWidget {
  static String routeName = '/menu';
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Covid'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MenuGrid(),
            if (orientation == Orientation.portrait)
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: MenuCard('Pencegahan', CegahScreen.routeName),
              ),
          ],
        ),
      ),
    );
  }
}
