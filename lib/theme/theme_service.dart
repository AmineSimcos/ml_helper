import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  //Themes
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey.shade300,
    appBarTheme: const AppBarTheme(),
    useMaterial3: true,
    dividerColor: Colors.black,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.amber),
  );

  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.amberAccent,
    appBarTheme: const AppBarTheme(),
    useMaterial3: true,
    dividerColor: Colors.white10,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.amberAccent),
  );

  final _getStorage = GetStorage();
  final _darkThemeKey = 'isDarkTheme';

  void saveThemeData(bool isDarkMode) {
    _getStorage.write(_darkThemeKey, isDarkMode);
  }

  bool isSavedDarkMode() {
    return _getStorage.read(_darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }
}
