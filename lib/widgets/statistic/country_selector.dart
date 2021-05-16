import 'package:flutter/material.dart';
import '../../models/country.dart';

Container countrySelector(
    String country, List<Country> countries, Function onChanged) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Text('Country : '),
        ),
        Expanded(
          child: DropdownButton<String>(
            isExpanded: true,
            value: country,
            icon: Text('Select Country'),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: ThemeData().accentColor),
            onChanged: onChanged,
            underline: Container(
              height: 2,
              color: ThemeData().accentColor,
            ),
            items: countries != null
                ? countries.map((Country country) {
                    return DropdownMenuItem<String>(
                      value: country.name,
                      child: Text(country.name),
                    );
                  }).toList()
                : [
                    DropdownMenuItem<String>(
                      value: 'Indonesia',
                      child: Text('Indonesia'),
                    )
                  ],
          ),
        ),
      ],
    ),
  );
}