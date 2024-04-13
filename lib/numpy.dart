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
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Arrays Count",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Arrays Numbers",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Arrays Operations",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Astype",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Date",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Degrees",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "FromFunction",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Math",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Open File",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Polynomial",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Random",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Where",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
        ],
      ),
    );
  }
}
