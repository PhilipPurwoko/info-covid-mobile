import 'package:flutter/material.dart';
import '../../models/statistic.dart';

class StatisticData extends StatelessWidget {
  final Statistic statistic;

  StatisticData(this.statistic);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: statistic != null
          ? Column(
              children: <Row>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Text>[
                    Text('Confirmed'),
                    Text(statistic.confirmed.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Text>[
                    Text('Deats'),
                    Text(statistic.deaths.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Text>[
                    Text('Recovered'),
                    Text(statistic.recovered.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Text>[
                    Text('Last Update'),
                    Text(statistic.lastUpdate),
                  ],
                ),
              ],
            )
          : Center(
              child: Text('No Data. Please select country'),
            ),
    );
  }
}
