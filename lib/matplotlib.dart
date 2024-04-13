import 'package:flutter/material.dart';import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class MatplotlibScreen extends StatelessWidget {
  const MatplotlibScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/matplotlib.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Matplotlib'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children:  [
          MyListTile(title: "3D",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "3D Contour",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "3D Projection Plot",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "3D Scatter",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "3D Trisurf",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "3D Wire Frame",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Annotate",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Bar",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Contour",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Hexbin",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Hist",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Hist2D",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Images",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Imshow",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Legend",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Limits",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Lines",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Patches",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Pie",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Plot 1",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Plot 2",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Save",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Scatter",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Style",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Subplot",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
          MyListTile(title: "Ticks",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },),
        ],
      ),
    );
  }
}
