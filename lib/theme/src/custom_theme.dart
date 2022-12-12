part of '../theme.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool isDarkTheme = false;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  //изменяем состояние темы приложения
  void toggleTheme() {
    isDarkTheme = !isDarkTheme;

    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.floralWhite,
      colorScheme: const ColorScheme(
        primary: AppColors.rose,
        secondary: AppColors.softPeach,
        background: AppColors.floralWhite,
        brightness: Brightness.light,
        error: AppColors.error,
        onBackground: AppColors.floralWhite,
        onError: AppColors.error,
        onPrimary: AppColors.darkrose,
        onSecondary: AppColors.softPeach,
        onSurface: AppColors.rose,
        surface: AppColors.rose,
      ),
      textTheme: createTextTheme(),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        cardColor: AppColors.darkGrey,
        scaffoldBackgroundColor: AppColors.stormDust,
        colorScheme: const ColorScheme(
          primary: AppColors.sandDune,
          onPrimary: AppColors.darkGrey,
          secondary: AppColors.darkGrey,
          onSecondary: AppColors.darkGrey,
          background: AppColors.sandDune,
          onBackground: AppColors.sandDune,
          brightness: Brightness.light,
          error: AppColors.error,
          onError: AppColors.error,
          onSurface: AppColors.stormDust,
          surface: AppColors.stormDust,
        ),
        textTheme: createTextTheme());
  }
}
