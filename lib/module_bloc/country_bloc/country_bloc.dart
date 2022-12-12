import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_belt/main.dart';
import 'package:test_belt/module_data/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_belt/module_data/services/country_api.dart';

part 'country_bloc.freezed.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  var isGrids = false;
  CountryBloc() : super(const CountryState.empty()) {
    on<CountryListLoadEvent>(
      (event, emit) async {
        emit(const CountryState.loading());

        try {
          final CountryModel loadedCountryList =
              await getIt<CountryProvider>().getCountries();
          isGrids = false;
          emit(CountryState.loaded(
              loadedCountry: loadedCountryList, isGrids: isGrids));
        } catch (e) {
          emit(const CountryState.error());
        }
      },
    );

    on<CountryGridLoadEvent>(
      (event, emit) async {
        emit(const CountryState.loading());

        try {
          final CountryModel loadedCountryList =
              await getIt<CountryProvider>().getCountries();
          isGrids = true;
          emit(CountryState.loaded(
              loadedCountry: loadedCountryList, isGrids: isGrids));
        } catch (e) {
          emit(const CountryState.error());
        }
      },
    );
  }
}
