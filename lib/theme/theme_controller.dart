import 'package:get/get.dart';
import 'theme_service.dart';

class MyThemeController extends GetxController {
  bool isDark = ThemeService().isSavedDarkMode();
  // isDark = Get.isDarkMode().obs;
  // GetStorage isDark = GetStorage();
  // ThemeData initialTheme = GetStorage().read("isDark") == true
  //     ? MyThemes.myDarkTheme
  //     : MyThemes.mylightTheme;
  // bool dark = GetStorage().read("isDark") == true ? true : false;

  // /*Future<MyThemes> getTheme() async{
  //      ThemeData initialTheme = GetStorage().read("isDark") == true
  //     ? return MyThemes.myDarkTheme
  //     : return MyThemes.mylightTheme;
  // }*/
  // changeTheme(bool dark) async {
  //   print("$dark");
  //   if (dark) {
  //     Get.changeThemeMode(ThemeMode.dark);
  //     isDark.write("isDark", dark);
  //   } else {
  //     Get.changeThemeMode(ThemeMode.light);
  //     // Get.changeTheme(MyThemes.myDarkTheme);
  //     isDark.write("isDark", 0);
  //   }
  //   this.dark = dark;
  //   initialTheme = GetStorage().read("isDark") == true
  //       ? MyThemes.myDarkTheme
  //       : MyThemes.mylightTheme;
  //   update();
  //   Get.back();
  //this.dark = dark;

  // update();
  // Get.forceAppUpdate();
  // Get.reloadAll(force: true);
  // await Get.forceAppUpdate();
  // }
}
