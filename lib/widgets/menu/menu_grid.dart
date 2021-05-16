import 'package:flutter/material.dart';
import './menu_card.dart';
import '../statistic/statistic_screen.dart';
import '../info/info_screen.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <MenuCard>[
          MenuCard('Statistik', StatisticScreen.routeName),
          MenuCard('Informasi', InfoScreen.routeName),
        ],
      ),
    );
  }
}
