import 'package:flutter/material.dart';
import 'menu_card.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: <MenuCard>[
          MenuCard('Statistik'),
          MenuCard('Informasi'),
          MenuCard('Tentang Aplikasi'),
        ],
      ),
    );
  }
}
