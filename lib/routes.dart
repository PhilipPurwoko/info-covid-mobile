import 'package:flutter/cupertino.dart';

import './widgets/menu/menu_screen.dart';
import './widgets/statistic/statistic_screen.dart';
import './widgets/info/info_screen.dart';
import './widgets/cegah/cegah_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  MenuScreen.routeName: (BuildContext ctx) => MenuScreen(),
  StatisticScreen.routeName: (BuildContext ctx) => StatisticScreen(),
  InfoScreen.routeName: (BuildContext ctx) => InfoScreen(),
  CegahScreen.routeName: (BuildContext ctx) => CegahScreen(),
};
