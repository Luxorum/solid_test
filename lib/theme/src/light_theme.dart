part of '../theme.dart';

///Create Light Theme for application
ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    primaryColor: AppColors.white,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
  );
}
