import 'package:flutter/material.dart';import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class PandasScreen extends StatelessWidget {
  const PandasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/pandas.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Pandas'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "DataFrame 1",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DataFrame 2",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DataFrame Drop",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DataFrame Groupby",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DataFrame Insert",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DataFrame Merge Tables",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DataFrame MultiIndex",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DataFrame Statistics",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "DateTime",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "GetDummies",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Index",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Plot",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Read Files",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Reset Index",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Series",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Series index",
            onTap: () async {
              String text = await read("statistics\\statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
        ],
      ),
    );
  }
}
