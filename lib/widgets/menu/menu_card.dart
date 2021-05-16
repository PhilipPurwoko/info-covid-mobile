import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String menuTitle;
  
  MenuCard(this.menuTitle);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: Colors.blue[100],
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(menuTitle),
          ),
        ),
      ),
    );
  }
}
