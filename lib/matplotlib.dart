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
              String text = await read("matplotlib/3d.py");
              Get.to(() => ReadCodeFromFile("Matplotlib 3D", text));
            },),
          MyListTile(title: "3D Contour",
            onTap: () async {
              String text = await read("matplotlib/3dcontour.py");
              Get.to(() => ReadCodeFromFile("Matplotlib 3D contour", text));
            },),
          MyListTile(title: "3D Projection Plot",
            onTap: () async {
              String text = await read("matplotlib/3dprojectionplot.py");
              Get.to(() => ReadCodeFromFile("Matplotlib 3D Projection Plot", text));
            },),
          MyListTile(title: "3D Projection Scatter",
            onTap: () async {
              String text = await read("matplotlib/3dprojectionscatter.py");
              Get.to(() => ReadCodeFromFile("Matplotlib 3D Projection Scatter", text));
            },),
          MyListTile(title: "3D Scatter",
            onTap: () async {
              String text = await read("matplotlib/3dscatter.py");
              Get.to(() => ReadCodeFromFile("Matplotlib 3D Scatter", text));
            },),
          MyListTile(title: "3D Trisurf",
            onTap: () async {
              String text = await read("matplotlib/3dtrisurf.py");
              Get.to(() => ReadCodeFromFile("Matplotlib 3D Trisurf", text));
            },),
          MyListTile(title: "3D Wire Frame",
            onTap: () async {
              String text = await read("matplotlib/3dwireframe.py");
              Get.to(() => ReadCodeFromFile("Matplotlib 3D Wire Frame", text));
            },),
          MyListTile(title: "Annotate",
            onTap: () async {
              String text = await read("matplotlib/annotate.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Annotate", text));
            },),
          MyListTile(title: "Bar",
            onTap: () async {
              String text = await read("matplotlib/bar.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Bar", text));
            },),
          MyListTile(title: "Contour",
            onTap: () async {
              String text = await read("matplotlib/contour.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Contour", text));
            },),
          MyListTile(title: "Hexbin",
            onTap: () async {
              String text = await read("matplotlib/hexbin.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Hexbin", text));
            },),
          MyListTile(title: "Hist",
            onTap: () async {
              String text = await read("matplotlib/hist.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Hist", text));
            },),
          MyListTile(title: "Hist2D",
            onTap: () async {
              String text = await read("matplotlib/hist2d.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Hist2D", text));
            },),
          MyListTile(title: "Images",
            onTap: () async {
              String text = await read("matplotlib/images.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Images", text));
            },),
          MyListTile(title: "Imshow",
            onTap: () async {
              String text = await read("matplotlib/imshow.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Imshow", text));
            },),
          MyListTile(title: "Legend",
            onTap: () async {
              String text = await read("matplotlib/legend.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Legend", text));
            },),
          MyListTile(title: "Limits",
            onTap: () async {
              String text = await read("matplotlib/limits.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Limits", text));
            },),
          MyListTile(title: "Lines",
            onTap: () async {
              String text = await read("matplotlib/lines.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Lines", text));
            },),
          MyListTile(title: "Patches",
            onTap: () async {
              String text = await read("matplotlib/patches.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Patches", text));
            },),
          MyListTile(title: "Pie",
            onTap: () async {
              String text = await read("matplotlib/pie.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Pie", text));
            },),
          MyListTile(title: "Plot 1",
            onTap: () async {
              String text = await read("matplotlib/plot1.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Plot 1", text));
            },),
          MyListTile(title: "Plot 2",
            onTap: () async {
              String text = await read("matplotlib/plot2.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Plot 2", text));
            },),
          MyListTile(title: "Save",
            onTap: () async {
              String text = await read("matplotlib/save.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Save", text));
            },),
          MyListTile(title: "Scatter",
            onTap: () async {
              String text = await read("matplotlib/scatter.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Scatter", text));
            },),
          MyListTile(title: "Style",
            onTap: () async {
              String text = await read("matplotlib/style.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Style", text));
            },),
          MyListTile(title: "Subplot",
            onTap: () async {
              String text = await read("matplotlib/subplot.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Subplot", text));
            },),
          MyListTile(title: "Ticks",
            onTap: () async {
              String text = await read("matplotlib/ticks.py");
              Get.to(() => ReadCodeFromFile("Matplotlib Ticks", text));
            },),
        ],
      ),
    );
  }
}
