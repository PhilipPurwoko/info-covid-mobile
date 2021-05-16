import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  static String routeName = '/main-menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Covid'),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text('Main Menu'),
          ),
        ),
      ),
    );
  }
}
