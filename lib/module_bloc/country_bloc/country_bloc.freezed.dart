// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function() loadGrids,
    required TResult Function() themeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function()? loadGrids,
    TResult? Function()? themeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function()? loadGrids,
    TResult Function()? themeChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryListLoadEvent value) loadList,
    required TResult Function(CountryGridLoadEvent value) loadGrids,
    required TResult Function(CustomThemeEvent value) themeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoadEvent value)? loadList,
    TResult? Function(CountryGridLoadEvent value)? loadGrids,
    TResult? Function(CustomThemeEvent value)? themeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoadEvent value)? loadList,
    TResult Function(CountryGridLoadEvent value)? loadGrids,
    TResult Function(CustomThemeEvent value)? themeChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res, CountryEvent>;
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res, $Val extends CountryEvent>
    implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CountryListLoadEventCopyWith<$Res> {
  factory _$$CountryListLoadEventCopyWith(_$CountryListLoadEvent value,
          $Res Function(_$CountryListLoadEvent) then) =
      __$$CountryListLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryListLoadEventCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$CountryListLoadEvent>
    implements _$$CountryListLoadEventCopyWith<$Res> {
  __$$CountryListLoadEventCopyWithImpl(_$CountryListLoadEvent _value,
      $Res Function(_$CountryListLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryListLoadEvent implements CountryListLoadEvent {
  const _$CountryListLoadEvent();

  @override
  String toString() {
    return 'CountryEvent.loadList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryListLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function() loadGrids,
    required TResult Function() themeChange,
  }) {
    return loadList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function()? loadGrids,
    TResult? Function()? themeChange,
  }) {
    return loadList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function()? loadGrids,
    TResult Function()? themeChange,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryListLoadEvent value) loadList,
    required TResult Function(CountryGridLoadEvent value) loadGrids,
    required TResult Function(CustomThemeEvent value) themeChange,
  }) {
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoadEvent value)? loadList,
    TResult? Function(CountryGridLoadEvent value)? loadGrids,
    TResult? Function(CustomThemeEvent value)? themeChange,
  }) {
    return loadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoadEvent value)? loadList,
    TResult Function(CountryGridLoadEvent value)? loadGrids,
    TResult Function(CustomThemeEvent value)? themeChange,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class CountryListLoadEvent implements CountryEvent {
  const factory CountryListLoadEvent() = _$CountryListLoadEvent;
}

/// @nodoc
abstract class _$$CountryGridLoadEventCopyWith<$Res> {
  factory _$$CountryGridLoadEventCopyWith(_$CountryGridLoadEvent value,
          $Res Function(_$CountryGridLoadEvent) then) =
      __$$CountryGridLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryGridLoadEventCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$CountryGridLoadEvent>
    implements _$$CountryGridLoadEventCopyWith<$Res> {
  __$$CountryGridLoadEventCopyWithImpl(_$CountryGridLoadEvent _value,
      $Res Function(_$CountryGridLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryGridLoadEvent implements CountryGridLoadEvent {
  const _$CountryGridLoadEvent();

  @override
  String toString() {
    return 'CountryEvent.loadGrids()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryGridLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function() loadGrids,
    required TResult Function() themeChange,
  }) {
    return loadGrids();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function()? loadGrids,
    TResult? Function()? themeChange,
  }) {
    return loadGrids?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function()? loadGrids,
    TResult Function()? themeChange,
    required TResult orElse(),
  }) {
    if (loadGrids != null) {
      return loadGrids();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryListLoadEvent value) loadList,
    required TResult Function(CountryGridLoadEvent value) loadGrids,
    required TResult Function(CustomThemeEvent value) themeChange,
  }) {
    return loadGrids(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoadEvent value)? loadList,
    TResult? Function(CountryGridLoadEvent value)? loadGrids,
    TResult? Function(CustomThemeEvent value)? themeChange,
  }) {
    return loadGrids?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoadEvent value)? loadList,
    TResult Function(CountryGridLoadEvent value)? loadGrids,
    TResult Function(CustomThemeEvent value)? themeChange,
    required TResult orElse(),
  }) {
    if (loadGrids != null) {
      return loadGrids(this);
    }
    return orElse();
  }
}

abstract class CountryGridLoadEvent implements CountryEvent {
  const factory CountryGridLoadEvent() = _$CountryGridLoadEvent;
}

/// @nodoc
abstract class _$$CustomThemeEventCopyWith<$Res> {
  factory _$$CustomThemeEventCopyWith(
          _$CustomThemeEvent value, $Res Function(_$CustomThemeEvent) then) =
      __$$CustomThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomThemeEventCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$CustomThemeEvent>
    implements _$$CustomThemeEventCopyWith<$Res> {
  __$$CustomThemeEventCopyWithImpl(
      _$CustomThemeEvent _value, $Res Function(_$CustomThemeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomThemeEvent implements CustomThemeEvent {
  const _$CustomThemeEvent();

  @override
  String toString() {
    return 'CountryEvent.themeChange()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CustomThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
    required TResult Function() loadGrids,
    required TResult Function() themeChange,
  }) {
    return themeChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
    TResult? Function()? loadGrids,
    TResult? Function()? themeChange,
  }) {
    return themeChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    TResult Function()? loadGrids,
    TResult Function()? themeChange,
    required TResult orElse(),
  }) {
    if (themeChange != null) {
      return themeChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryListLoadEvent value) loadList,
    required TResult Function(CountryGridLoadEvent value) loadGrids,
    required TResult Function(CustomThemeEvent value) themeChange,
  }) {
    return themeChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoadEvent value)? loadList,
    TResult? Function(CountryGridLoadEvent value)? loadGrids,
    TResult? Function(CustomThemeEvent value)? themeChange,
  }) {
    return themeChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoadEvent value)? loadList,
    TResult Function(CountryGridLoadEvent value)? loadGrids,
    TResult Function(CustomThemeEvent value)? themeChange,
    required TResult orElse(),
  }) {
    if (themeChange != null) {
      return themeChange(this);
    }
    return orElse();
  }
}

abstract class CustomThemeEvent implements CountryEvent {
  const factory CustomThemeEvent() = _$CustomThemeEvent;
}

/// @nodoc
mixin _$CountryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CountryModel loadedCountry, bool isGrids) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryEmptyState value) empty,
    required TResult Function(CountryLoadingState value) loading,
    required TResult Function(CountryLoadedState value) loaded,
    required TResult Function(CountryErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryEmptyState value)? empty,
    TResult? Function(CountryLoadingState value)? loading,
    TResult? Function(CountryLoadedState value)? loaded,
    TResult? Function(CountryErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryEmptyState value)? empty,
    TResult Function(CountryLoadingState value)? loading,
    TResult Function(CountryLoadedState value)? loaded,
    TResult Function(CountryErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CountryEmptyStateCopyWith<$Res> {
  factory _$$CountryEmptyStateCopyWith(
          _$CountryEmptyState value, $Res Function(_$CountryEmptyState) then) =
      __$$CountryEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryEmptyStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryEmptyState>
    implements _$$CountryEmptyStateCopyWith<$Res> {
  __$$CountryEmptyStateCopyWithImpl(
      _$CountryEmptyState _value, $Res Function(_$CountryEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryEmptyState implements CountryEmptyState {
  const _$CountryEmptyState();

  @override
  String toString() {
    return 'CountryState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CountryModel loadedCountry, bool isGrids) loaded,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryEmptyState value) empty,
    required TResult Function(CountryLoadingState value) loading,
    required TResult Function(CountryLoadedState value) loaded,
    required TResult Function(CountryErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryEmptyState value)? empty,
    TResult? Function(CountryLoadingState value)? loading,
    TResult? Function(CountryLoadedState value)? loaded,
    TResult? Function(CountryErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryEmptyState value)? empty,
    TResult Function(CountryLoadingState value)? loading,
    TResult Function(CountryLoadedState value)? loaded,
    TResult Function(CountryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CountryEmptyState implements CountryState {
  const factory CountryEmptyState() = _$CountryEmptyState;
}

/// @nodoc
abstract class _$$CountryLoadingStateCopyWith<$Res> {
  factory _$$CountryLoadingStateCopyWith(_$CountryLoadingState value,
          $Res Function(_$CountryLoadingState) then) =
      __$$CountryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryLoadingStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryLoadingState>
    implements _$$CountryLoadingStateCopyWith<$Res> {
  __$$CountryLoadingStateCopyWithImpl(
      _$CountryLoadingState _value, $Res Function(_$CountryLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryLoadingState implements CountryLoadingState {
  const _$CountryLoadingState();

  @override
  String toString() {
    return 'CountryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CountryModel loadedCountry, bool isGrids) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryEmptyState value) empty,
    required TResult Function(CountryLoadingState value) loading,
    required TResult Function(CountryLoadedState value) loaded,
    required TResult Function(CountryErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryEmptyState value)? empty,
    TResult? Function(CountryLoadingState value)? loading,
    TResult? Function(CountryLoadedState value)? loaded,
    TResult? Function(CountryErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryEmptyState value)? empty,
    TResult Function(CountryLoadingState value)? loading,
    TResult Function(CountryLoadedState value)? loaded,
    TResult Function(CountryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CountryLoadingState implements CountryState {
  const factory CountryLoadingState() = _$CountryLoadingState;
}

/// @nodoc
abstract class _$$CountryLoadedStateCopyWith<$Res> {
  factory _$$CountryLoadedStateCopyWith(_$CountryLoadedState value,
          $Res Function(_$CountryLoadedState) then) =
      __$$CountryLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CountryModel loadedCountry, bool isGrids});
}

/// @nodoc
class __$$CountryLoadedStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryLoadedState>
    implements _$$CountryLoadedStateCopyWith<$Res> {
  __$$CountryLoadedStateCopyWithImpl(
      _$CountryLoadedState _value, $Res Function(_$CountryLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedCountry = null,
    Object? isGrids = null,
  }) {
    return _then(_$CountryLoadedState(
      loadedCountry: null == loadedCountry
          ? _value.loadedCountry
          : loadedCountry // ignore: cast_nullable_to_non_nullable
              as CountryModel,
      isGrids: null == isGrids
          ? _value.isGrids
          : isGrids // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CountryLoadedState implements CountryLoadedState {
  const _$CountryLoadedState(
      {required this.loadedCountry, required this.isGrids});

  @override
  final CountryModel loadedCountry;
  @override
  final bool isGrids;

  @override
  String toString() {
    return 'CountryState.loaded(loadedCountry: $loadedCountry, isGrids: $isGrids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryLoadedState &&
            (identical(other.loadedCountry, loadedCountry) ||
                other.loadedCountry == loadedCountry) &&
            (identical(other.isGrids, isGrids) || other.isGrids == isGrids));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadedCountry, isGrids);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryLoadedStateCopyWith<_$CountryLoadedState> get copyWith =>
      __$$CountryLoadedStateCopyWithImpl<_$CountryLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CountryModel loadedCountry, bool isGrids) loaded,
    required TResult Function() error,
  }) {
    return loaded(loadedCountry, isGrids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(loadedCountry, isGrids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadedCountry, isGrids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryEmptyState value) empty,
    required TResult Function(CountryLoadingState value) loading,
    required TResult Function(CountryLoadedState value) loaded,
    required TResult Function(CountryErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryEmptyState value)? empty,
    TResult? Function(CountryLoadingState value)? loading,
    TResult? Function(CountryLoadedState value)? loaded,
    TResult? Function(CountryErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryEmptyState value)? empty,
    TResult Function(CountryLoadingState value)? loading,
    TResult Function(CountryLoadedState value)? loaded,
    TResult Function(CountryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CountryLoadedState implements CountryState {
  const factory CountryLoadedState(
      {required final CountryModel loadedCountry,
      required final bool isGrids}) = _$CountryLoadedState;

  CountryModel get loadedCountry;
  bool get isGrids;
  @JsonKey(ignore: true)
  _$$CountryLoadedStateCopyWith<_$CountryLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountryErrorStateCopyWith<$Res> {
  factory _$$CountryErrorStateCopyWith(
          _$CountryErrorState value, $Res Function(_$CountryErrorState) then) =
      __$$CountryErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryErrorStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryErrorState>
    implements _$$CountryErrorStateCopyWith<$Res> {
  __$$CountryErrorStateCopyWithImpl(
      _$CountryErrorState _value, $Res Function(_$CountryErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryErrorState implements CountryErrorState {
  const _$CountryErrorState();

  @override
  String toString() {
    return 'CountryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CountryModel loadedCountry, bool isGrids) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CountryModel loadedCountry, bool isGrids)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryEmptyState value) empty,
    required TResult Function(CountryLoadingState value) loading,
    required TResult Function(CountryLoadedState value) loaded,
    required TResult Function(CountryErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryEmptyState value)? empty,
    TResult? Function(CountryLoadingState value)? loading,
    TResult? Function(CountryLoadedState value)? loaded,
    TResult? Function(CountryErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryEmptyState value)? empty,
    TResult Function(CountryLoadingState value)? loading,
    TResult Function(CountryLoadedState value)? loaded,
    TResult Function(CountryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CountryErrorState implements CountryState {
  const factory CountryErrorState() = _$CountryErrorState;
}
