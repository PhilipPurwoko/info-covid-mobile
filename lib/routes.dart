import 'package:flutter/cupertino.dart';

import 'widgets/main_menu/main_menu_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  MainMenu.routeName: (BuildContext ctx) => MainMenu(),
};
