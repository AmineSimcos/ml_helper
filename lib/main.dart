import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ml_helper/date.dart';
import 'package:ml_helper/file.dart';
import 'package:ml_helper/keras.dart';
import 'package:ml_helper/maths.dart';
import 'package:ml_helper/matplotlib.dart';
import 'package:ml_helper/numpy.dart';
import 'package:ml_helper/os.dart';
import 'package:ml_helper/pandas.dart';
import 'package:ml_helper/random.dart';
import 'package:ml_helper/regex.dart';
import 'package:ml_helper/seaborn.dart';
import 'package:ml_helper/sklearn.dart';
import 'package:ml_helper/splashscreen.dart';
import 'package:ml_helper/statistic.dart';
import 'package:ml_helper/tensorflow.dart';
import 'package:get/get.dart';
import 'scipy.dart';
import 'theme/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ML Helper',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashscreen',
      theme: ThemeService().lightTheme,
      darkTheme: ThemeService().darkTheme,
      themeMode: ThemeService().getThemeMode(),

      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // home: WelcomeScreen(),
      getPages: [
        GetPage(name: '/splashscreen', page: () => const SplashScreenPage()),
        GetPage(name: '/Scipy', page: () => const ScipyScreen()),
        GetPage(name: '/Matplotlib', page: () => const MatplotlibScreen()),
        GetPage(name: '/Numpy', page: () => const NumpyScreen()),
        GetPage(name: '/Seaborn', page: () => const SeabornScreen()),
        GetPage(name: '/Sklearn', page: () => const SklearnScreen()),
        GetPage(name: '/Pandas', page: () => const PandasScreen()),
        GetPage(name: '/Random', page: () => const RandomScreen()),
        GetPage(name: '/Maths', page: () => const MathsScreen()),
        GetPage(name: '/Re', page: () => const RegexScreen()),
        GetPage(name: '/Keras', page: () => const KerasScreen()),
        GetPage(name: '/File', page: () => const FileScreen()),
        GetPage(name: '/Statistics', page: () => const StatisticsScreen()),
        GetPage(name: '/OS', page: () => const OSScreen()),
        GetPage(name: '/Tensorflow', page: () => const TensorflowScreen()),
        GetPage(name: '/Date', page: () => const DateScreen()),
        // GetPage(name: '/login', page: () => LoginScreen()),
      ],
    );
  }
}
