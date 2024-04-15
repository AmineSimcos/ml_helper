import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class NumpyScreen extends StatelessWidget {
  const NumpyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/numpy.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Numpy'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Arrays",
            onTap: () async {
              String text = await read("numpy/arrays.py");
              Get.to(() => ReadCodeFromFile("Arrays", text));
            },
          ),
          MyListTile(
            title: "Arrays Count",
            onTap: () async {
              String text = await read("numpy/arrayscount.py");
              Get.to(() => ReadCodeFromFile("Arrays Count", text));
            },
          ),
          MyListTile(
            title: "Arrays Numbers",
            onTap: () async {
              String text = await read("numpy/arraysnumbers.py");
              Get.to(() => ReadCodeFromFile("Arrays Numbers", text));
            },
          ),
          MyListTile(
            title: "Arrays Operations",
            onTap: () async {
              String text = await read("numpy/arraysoperations.py");
              Get.to(() => ReadCodeFromFile("Arrays Operations", text));
            },
          ),
          MyListTile(
            title: "Astype",
            onTap: () async {
              String text = await read("numpy/astype.py");
              Get.to(() => ReadCodeFromFile("Astype", text));
            },
          ),
          MyListTile(
            title: "Date",
            onTap: () async {
              String text = await read("numpy/date.py");
              Get.to(() => ReadCodeFromFile("Date", text));
            },
          ),
          MyListTile(
            title: "Degrees",
            onTap: () async {
              String text = await read("numpy/degrees.py");
              Get.to(() => ReadCodeFromFile("Degrees", text));
            },
          ),
          MyListTile(
            title: "FromFunction",
            onTap: () async {
              String text = await read("numpy/fromfunction.py");
              Get.to(() => ReadCodeFromFile("FromFunction", text));
            },
          ),
          MyListTile(
            title: "Math",
            onTap: () async {
              String text = await read("numpy/math.py");
              Get.to(() => ReadCodeFromFile("Math", text));
            },
          ),
          MyListTile(
            title: "Open File",
            onTap: () async {
              String text = await read("numpy/openfile.py");
              Get.to(() => ReadCodeFromFile("Open File", text));
            },
          ),
          MyListTile(
            title: "Polynomial",
            onTap: () async {
              String text = await read("numpy/polynomial.py");
              Get.to(() => ReadCodeFromFile("Polynomial", text));
            },
          ),
          MyListTile(
            title: "Random",
            onTap: () async {
              String text = await read("numpy/random.py");
              Get.to(() => ReadCodeFromFile("Random", text));
            },
          ),
          MyListTile(
            title: "Where",
            onTap: () async {
              String text = await read("numpy/where.py");
              Get.to(() => ReadCodeFromFile("Where", text));
            },
          ),
        ],
      ),
    );
  }
}
