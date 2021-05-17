import 'package:flutter/material.dart';
import '../../models/statistic.dart';
import '../../models/country.dart';
import './country_selector.dart';
import './statistic_data.dart';

class StatisticScreen extends StatefulWidget {
  static String routeName = '/statistic';
  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  String country = 'Indonesia';
  Statistic stat;
  List<Country> countries;
  final TextStyle customStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  void changeCountry(String newCountry) {
    setState(() {
      country = newCountry;
    });
    getData();
  }

  void getData() async {
    var updatedStat = await Statistic.getData(country);
    setState(() {
      stat = updatedStat;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
    Country.getCountry().then((value) {
      setState(() {
        countries = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistic Covid'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            countrySelector(
              context,
              customStyle,
              country,
              countries,
              (String newCountry) => changeCountry(newCountry),
            ),
            StatisticData(stat, customStyle),
          ],
        ),
      ),
    );
  }
}
