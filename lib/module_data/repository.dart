import 'package:test_belt/main.dart';
import 'package:test_belt/module_data/model/country.dart';
import 'package:test_belt/module_data/services/country_api.dart';

abstract class Repository {
  setup() {}
}

class CountryRepository implements Repository {
  @override
  void setup() {
    getIt.registerSingleton<CountryProvider>(CountryProvider());
    getIt.registerSingleton<CountryModel>(CountryModel());
  }
}

class CountryModel {
  late List<Country> model;

  CountryModel();

  CountryModel.fromDomain(List<Country> user) {
    model = user;
  }
}
