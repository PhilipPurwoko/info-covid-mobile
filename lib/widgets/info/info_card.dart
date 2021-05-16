import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String paragraph;

  InfoCard({
    @required this.title,
    @required this.paragraph,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(20),
      color: Theme.of(context).accentColor,
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
