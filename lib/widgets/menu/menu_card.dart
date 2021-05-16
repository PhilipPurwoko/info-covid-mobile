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
          width: 130,
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
