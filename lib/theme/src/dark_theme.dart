part of '../theme.dart';

///Create Dark Theme for application
ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.white,
  );
}
