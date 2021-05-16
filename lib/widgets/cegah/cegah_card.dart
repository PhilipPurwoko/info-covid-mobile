import 'package:flutter/material.dart';

class CegahCard extends StatelessWidget {
  final String title;
  final String paragraph;
  final String imageUrl;

  CegahCard({
    @required this.title,
    @required this.paragraph,
    @required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Theme.of(context).accentColor,
      elevation: 10,
      child: Container(
        width: 200,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              paragraph,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
