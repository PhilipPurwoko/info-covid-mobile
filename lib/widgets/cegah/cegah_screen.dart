import 'package:flutter/material.dart';
import './cegah_summary.dart';
import './cegah_carousel.dart';

class CegahScreen extends StatelessWidget {
  static String routeName = '/cegah';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mencegah Penularan'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            CegahSummary(),
            CegahCarousel(),
          ],
        ),
      ),
    );
  }
}
