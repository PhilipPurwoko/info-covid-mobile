import 'package:flutter/material.dart';
import '../../models/statistic.dart';

class StatisticScreen extends StatefulWidget {
  static String routeName = '/statistic';
  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  String country = 'Indonesia';
  Statistic stat;

  void changeCountry() {
    setState(() {
      country = 'India';
    });
  }

  void getData() {
    setState(() async {
      stat = await Statistic.getData(country);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistic Covid'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.black, width: 3),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text('Country : $country'),
                  ),
                  ElevatedButton(
                    onPressed: changeCountry,
                    child: Text('Change Country'),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: getData,
                    child: Text('Get Data'),
                  ),
                  stat != null
                      ? Column(
                          children: <Text>[
                            Text('Confirmed : ${stat.confirmed}'),
                            Text('Deats : ${stat.deaths}'),
                            Text('Recovered : ${stat.recovered}'),
                            Text('Last Update : ${stat.lastUpdate}'),
                          ],
                        )
                      : Text('No Data'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
