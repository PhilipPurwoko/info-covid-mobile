import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String menuTitle;
  final String route;

  MenuCard(this.menuTitle, this.route);

  void navigate(BuildContext ctx, String route) {
    Navigator.pushNamed(ctx, route);
  }

  double cardWidth(double width) {
    double desiredWidth = 150;
    if (width > 768) {
      desiredWidth = 300;
    } else if (width < 375) {
      desiredWidth = 120;
    }
    return desiredWidth;
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      color: Theme.of(context).accentColor,
      child: InkWell(
        onTap: () {
          navigate(context, route);
        },
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: cardWidth(screenSize.width),
          height: 100,
          child: Center(
            child: Text(
              menuTitle,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
    );
  }
}
