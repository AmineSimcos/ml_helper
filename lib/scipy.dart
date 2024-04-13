import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class ScipyScreen extends StatelessWidget {
  const ScipyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/scipy.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Scipy'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Basinhopping",
            onTap: () async {
              String text = await read("scipy\\basinhopping.py");
              Get.to(() => ReadCodeFromFile("Scipy Basinhopping", text));
            },
          ),
          MyListTile(
            title: "CurveFit",
            onTap: () async {
              String text = await read("scipy\\curvefit.py");
              Get.to(() => ReadCodeFromFile("Scipy Curve_fit", text));
            },
          ),
          MyListTile(
            title: "Fmin bfgs",
            onTap: () async {
              String text = await read("scipy\\fminbfgs.py");
              Get.to(() => ReadCodeFromFile("Scipy Fmin bfgs", text));
            },
          ),
          MyListTile(
            title: "Fmin bounds",
            onTap: () async {
              String text = await read("scipy\\fminbounds.py");
              Get.to(() => ReadCodeFromFile("Scipy Fmin bounds", text));
            },
          ),
          MyListTile(
            title: "Fslove",
            onTap: () async {
              String text = await read("scipy\\fslove.py");
              Get.to(() => ReadCodeFromFile("Scipy Fslove", text));
            },
          ),
          MyListTile(
            title: "Loadmat",
            onTap: () async {
              String text = await read("scipy\\loadmat.py");
              Get.to(() => ReadCodeFromFile("Scipy Loadmat", text));
            },
          ),
          MyListTile(
            title: "Probplot",
            onTap: () async {
              String text = await read("scipy\\probplot.py");
              Get.to(() => ReadCodeFromFile("Scipy Probplot", text));
            },
          ),
        ],
      ),
    );
  }
}
