import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class SeabornScreen extends StatelessWidget {
  const SeabornScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/seaborn.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Seaborn'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Seaborn Barplot 1",
            onTap: () async {
              String text = await read("seaborn/barplot1.py");
              Get.to(() => ReadCodeFromFile("Seaborn Barplot 1", text));
            },
          ),
          MyListTile(
            title: "Seaborn Barplot 2",
            onTap: () async {
              String text = await read("seaborn/barplot2.py");
              Get.to(() => ReadCodeFromFile("Seaborn Barplot 2", text));
            },
          ),
          MyListTile(
            title: "Seaborn Barplot 3",
            onTap: () async {
              String text = await read("seaborn/barplot3.py");
              Get.to(() => ReadCodeFromFile("Seaborn Barplot 3", text));
            },
          ),
          MyListTile(
            title: "Seaborn Barplot 4",
            onTap: () async {
              String text = await read("seaborn/barplot4.py");
              Get.to(() => ReadCodeFromFile("Seaborn Barplot 4", text));
            },
          ),
          MyListTile(
            title: "Seaborn Barplot 5",
            onTap: () async {
              String text = await read("seaborn/barplot5.py");
              Get.to(() => ReadCodeFromFile("Seaborn Barplot 5", text));
            },
          ),
          MyListTile(
            title: "Seaborn Barplot 6",
            onTap: () async {
              String text = await read("seaborn/barplot6.py");
              Get.to(() => ReadCodeFromFile("Seaborn Barplot 6", text));
            },
          ),
          MyListTile(
            title: "Seaborn Barplot 7",
            onTap: () async {
              String text = await read("seaborn/barplot7.py");
              Get.to(() => ReadCodeFromFile("Seaborn Barplot 7", text));
            },
          ),
          MyListTile(
            title: "Seaborn Boxplot 1",
            onTap: () async {
              String text = await read("seaborn/boxplot1.py");
              Get.to(() => ReadCodeFromFile("Seaborn Boxplot 1", text));
            },
          ),
          MyListTile(
            title: "Seaborn Boxplot 2",
            onTap: () async {
              String text = await read("seaborn/boxplot2.py");
              Get.to(() => ReadCodeFromFile("Seaborn Boxplot 2", text));
            },
          ),
          MyListTile(
            title: "Seaborn Boxplot 3",
            onTap: () async {
              String text = await read("seaborn/boxplot3.py");
              Get.to(() => ReadCodeFromFile("Seaborn Boxplot 3", text));
            },
          ),
          MyListTile(
            title: "Seaborn Catplot Bar",
            onTap: () async {
              String text = await read("seaborn/catplotbar.py");
              Get.to(() => ReadCodeFromFile("Seaborn Catplot Bar", text));
            },
          ),
          MyListTile(
            title: "Seaborn Catplot Box",
            onTap: () async {
              String text = await read("seaborn/catplotbox.py");
              Get.to(() => ReadCodeFromFile("Seaborn Catplot Box", text));
            },
          ),
          MyListTile(
            title: "Seaborn Catplot Count",
            onTap: () async {
              String text = await read("seaborn/catplotcount.py");
              Get.to(() => ReadCodeFromFile("Seaborn Catplot Count", text));
            },
          ),
          MyListTile(
            title: "Seaborn Countplot 1",
            onTap: () async {
              String text = await read("seaborn/countplot1.py");
              Get.to(() => ReadCodeFromFile("Seaborn Countplot 1", text));
            },
          ),
          MyListTile(
            title: "Seaborn Countplot 2",
            onTap: () async {
              String text = await read("seaborn/countplot2.py");
              Get.to(() => ReadCodeFromFile("Seaborn Countplot 2", text));
            },
          ),
          MyListTile(
            title: "Seaborn Countplot 3",
            onTap: () async {
              String text = await read("seaborn/countplot3.py");
              Get.to(() => ReadCodeFromFile("Seaborn Countplot 3", text));
            },
          ),
          MyListTile(
            title: "Seaborn Data 1",
            onTap: () async {
              String text = await read("seaborn/data1.py");
              Get.to(() => ReadCodeFromFile("Seaborn Data 1", text));
            },
          ),
          MyListTile(
            title: "Seaborn Data 2",
            onTap: () async {
              String text = await read("seaborn/data2.py");
              Get.to(() => ReadCodeFromFile("Seaborn Data 2", text));
            },
          ),
          MyListTile(
            title: "Seaborn Data 3",
            onTap: () async {
              String text = await read("seaborn/data3.py");
              Get.to(() => ReadCodeFromFile("Seaborn Data 3", text));
            },
          ),
          MyListTile(
            title: "Seaborn Distplot",
            onTap: () async {
              String text = await read("seaborn/distplot.py");
              Get.to(() => ReadCodeFromFile("Seaborn Distplot", text));
            },
          ),
          MyListTile(
            title: "Seaborn FacetGrid 1",
            onTap: () async {
              String text = await read("seaborn/facetgrid1.py");
              Get.to(() => ReadCodeFromFile("Seaborn Library", text));
            },
          ),
          MyListTile(
            title: "Seaborn FacetGrid 2",
            onTap: () async {
              String text = await read("seaborn/facetgrid2.py");
              Get.to(() => ReadCodeFromFile("Seaborn Library", text));
            },
          ),
          MyListTile(
            title: "Seaborn FacetGrid 3",
            onTap: () async {
              String text = await read("seaborn/facetgrid3.py");
              Get.to(() => ReadCodeFromFile("Seaborn Library", text));
            },
          ),
          MyListTile(
            title: "Seaborn FacetGrid 4",
            onTap: () async {
              String text = await read("seaborn/facetgrid4.py");
              Get.to(() => ReadCodeFromFile("Seaborn Library", text));
            },
          ),
          MyListTile(
            title: "Seaborn FacetGrid 5",
            onTap: () async {
              String text = await read("seaborn/facetgrid5.py");
              Get.to(() => ReadCodeFromFile("Seaborn FacetGrid 5", text));
            },
          ),
          MyListTile(
            title: "Seaborn Jointplot",
            onTap: () async {
              String text = await read("seaborn/jointplot.py");
              Get.to(() => ReadCodeFromFile("Seaborn Jointplot", text));
            },
          ),
          MyListTile(
            title: "Seaborn Kdeplot 1",
            onTap: () async {
              String text = await read("seaborn/kdeplot1.py");
              Get.to(() => ReadCodeFromFile("Seaborn Kdeplot 1", text));
            },
          ),
          MyListTile(
            title: "Seaborn Kdeplot 2",
            onTap: () async {
              String text = await read("seaborn/kdeplot2.py");
              Get.to(() => ReadCodeFromFile("Seaborn Kdeplot 2", text));
            },
          ),
          MyListTile(
            title: "Seaborn Pairplot 1",
            onTap: () async {
              String text = await read("seaborn/pairplot1.py");
              Get.to(() => ReadCodeFromFile("Seaborn Pairplot 1", text));
            },
          ),
          MyListTile(
            title: "Seaborn Pairplot 2",
            onTap: () async {
              String text = await read("seaborn/pairplot2.py");
              Get.to(() => ReadCodeFromFile("Seaborn Pairplot 2", text));
            },
          ),
          MyListTile(
            title: "Seaborn Pairplot 3",
            onTap: () async {
              String text = await read("seaborn/pairplot3.py");
              Get.to(() => ReadCodeFromFile("Seaborn Pairplot 3", text));
            },
          ),
          MyListTile(
            title: "Seaborn Pairplot 4",
            onTap: () async {
              String text = await read("seaborn/pairplot4.py");
              Get.to(() => ReadCodeFromFile("Seaborn Pairplot 4", text));
            },
          ),
          MyListTile(
            title: "Seaborn Pairplot 5",
            onTap: () async {
              String text = await read("seaborn/pairplot5.py");
              Get.to(() => ReadCodeFromFile("Seaborn Pairplot 5", text));
            },
          ),
          MyListTile(
            title: "Seaborn Pairplot 6",
            onTap: () async {
              String text = await read("seaborn/pairplot6.py");
              Get.to(() => ReadCodeFromFile("Seaborn Pairplot 6", text));
            },
          ),
          MyListTile(
            title: "Seaborn Swarmplot",
            onTap: () async {
              String text = await read("seaborn/swarmplot.py");
              Get.to(() => ReadCodeFromFile("Seaborn Swarmplot", text));
            },
          ),
        ],
      ),
    );
  }
}
