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
                    Text(
                      'Confirmed',
                      style: TextStyle(color: Colors.yellow[700]),
                    ),
                    Text(
                      statistic.confirmed.toString(),
                      style: TextStyle(color: Colors.yellow[700]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Text>[
                    Text(
                      'Deaths',
                      style: const TextStyle(color: Colors.red),
                    ),
                    Text(
                      statistic.deaths.toString(),
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Text>[
                    Text(
                      'Recovered',
                      style: const TextStyle(color: Colors.green),
                    ),
                    Text(
                      statistic.recovered.toString(),
                      style: const TextStyle(color: Colors.green),
                    ),
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
