import 'package:flutter/material.dart';
import './menu_card.dart';
import '../statistic/statistic_screen.dart';
import '../info/info_screen.dart';
import '../cegah/cegah_screen.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 200,
        //   childAspectRatio: 3/2,
        //   crossAxisSpacing: 20,
        //   mainAxisSpacing: 20,
        // ),
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: orientation == Orientation.landscape
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.spaceBetween,
        children: <MenuCard>[
          MenuCard('Statistik', StatisticScreen.routeName),
          MenuCard('Informasi', InfoScreen.routeName),
          if (orientation == Orientation.landscape)
            MenuCard('Pencegahan', CegahScreen.routeName),
        ],
      ),
    );
  }
}
