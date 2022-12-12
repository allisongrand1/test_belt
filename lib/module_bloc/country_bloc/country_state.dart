part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.empty() = CountryEmptyState;
  const factory CountryState.loading() = CountryLoadingState;
  const factory CountryState.loaded(
      {required CountryModel loadedCountry,
      required bool isGrids}) = CountryLoadedState;
  const factory CountryState.error() = CountryErrorState;
}
