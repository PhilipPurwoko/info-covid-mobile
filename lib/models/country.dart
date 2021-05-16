import 'package:http/http.dart' as http;
import 'dart:convert';

class Country {
  final String name;
  final String iso2;
  final String iso3;

  Country(this.name, this.iso2, this.iso3);

  static Future<List<Country>> getCountry() async {
    var url = Uri.parse('https://covid19.mathdro.id/api/countries/');
    var response = await http.get(url);
    var res = json.decode(response.body);
    return Country.fromListJson(res['countries']);
  }
  
  static List<Country> fromListJson(List countries) {
    return countries.map((country) {
      return Country(country['name'], country['iso2'], country['iso3']);
    }).toList();
  }
}
