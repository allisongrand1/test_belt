import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_belt/module_data/model/country.dart';
import 'package:test_belt/module_data/repository.dart';

class CountryProvider {
  Future<CountryModel> getCountries() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/70435898-da3c-4490-945e-785d00b322a9'));

    if (response.statusCode == 200) {
      final List<dynamic> countryJson = await json.decode(response.body);
      var countries =
          countryJson.map((json) => Country.fromJson(json)).toList();

      var countrymodel = CountryModel.fromDomain(countries);
      return countrymodel;
    } else {
      throw Exception('Error fetching countries');
    }
  }
}
