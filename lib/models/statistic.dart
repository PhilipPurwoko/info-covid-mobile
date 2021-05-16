import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Statistic {
  final int confirmed;
  final int deaths;
  final int recovered;
  final String lastUpdate;

  Statistic({
    @required this.confirmed,
    @required this.deaths,
    @required this.recovered,
    @required this.lastUpdate,
  });

  static Future getData(String country) async {
    var url = Uri.parse('https://covid19.mathdro.id/api/countries/$country');
    var response = await http.get(url);
    var res = json.decode(response.body);
    return Statistic(
      confirmed: res['confirmed']['value'],
      deaths: res['deaths']['value'],
      recovered: res['recovered']['value'],
      lastUpdate: res['lastUpdate'],
    );
  }
}
