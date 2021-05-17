import 'package:flutter/material.dart';
import '../../models/statistic.dart';

class StatisticData extends StatelessWidget {
  final Statistic statistic;
  final TextStyle customStyle;

  StatisticData(this.statistic, this.customStyle);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 400,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        color: Theme.of(context).accentColor,
        child: statistic != null
            ? Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Row>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Text>[
                        Text(
                          'Confirmed',
                          style:
                              customStyle.copyWith(color: Colors.yellow[100]),
                        ),
                        Text(
                          statistic.confirmed.toString(),
                          style:
                              customStyle.copyWith(color: Colors.yellow[100]),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Text>[
                        Text(
                          'Deaths',
                          style: customStyle.copyWith(color: Colors.red),
                        ),
                        Text(
                          statistic.deaths.toString(),
                          style: customStyle.copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Text>[
                        Text(
                          'Recovered',
                          style: customStyle.copyWith(color: Colors.green),
                        ),
                        Text(
                          statistic.recovered.toString(),
                          style: customStyle.copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Text>[
                        Text('Last Update', style: customStyle),
                        Text(statistic.lastUpdate, style: customStyle),
                      ],
                    ),
                  ],
                ),
              )
            : Center(
                child: Text('No Data. Please select country'),
              ),
      ),
    );
  }
}
