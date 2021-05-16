import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String menuTitle;
  final String route;

  MenuCard(this.menuTitle, this.route);

  void navigate(BuildContext ctx, String route) {
    Navigator.pushNamed(ctx, route);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigate(context, route);
      },
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
