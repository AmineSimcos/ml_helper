import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'drawer.dart';
import 'widgets/menuwidget.dart';
import 'theme/theme_controller.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  final MyThemeController myThemeController = Get.put(MyThemeController());

  final List menu = [
    {'title': 'Scipy', 'img': 'assets/images/scipy.png'},
    {'title': 'Matplotlib', 'img': 'assets/images/matplotlib.png'},
    {'title': 'Tensorflow', 'img': 'assets/images/tensorflow.png'},
    {'title': 'Numpy', 'img': 'assets/images/numpy.png'},
    {'title': 'Pandas', 'img': 'assets/images/pandas.png'},
    {'title': 'Sklearn', 'img': 'assets/images/sklearn.png'},
    {'title': 'Seaborn', 'img': 'assets/images/seaborn.png'},
    {'title': 'Keras', 'img': 'assets/images/keras.png'},
    {'title': 'OS', 'img': 'assets/images/os.png'},
    {'title': 'Maths', 'img': 'assets/images/maths.png'},
    {'title': 'Statistics', 'img': 'assets/images/statistic.png'},
    {'title': 'Random', 'img': 'assets/images/random.png'},
    {'title': 'Date', 'img': 'assets/images/date.png'},
    {'title': 'Re', 'img': 'assets/images/regex.png'},
    {'title': 'File', 'img': 'assets/images/file.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ML Helper"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: menu.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return MenuWidget(menu: menu[index]);
        },
      ),
      drawer: const Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
