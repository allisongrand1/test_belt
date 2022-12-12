part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.loadList() = CountryListLoadEvent;
  const factory CountryEvent.loadGrids() = CountryGridLoadEvent;
  const factory CountryEvent.themeChange() = CustomThemeEvent;
}
