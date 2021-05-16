import 'package:flutter/cupertino.dart';

import 'widgets/menu/menu_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  MenuScreen.routeName: (BuildContext ctx) => MenuScreen(),
};
