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
              String text = await read("pandas/dataframe1.py");
              Get.to(() => ReadCodeFromFile("DataFrame 1", text));
            },
          ),
          MyListTile(
            title: "DataFrame 2",
            onTap: () async {
              String text = await read("pandas/dataframe2.py");
              Get.to(() => ReadCodeFromFile("DataFrame 2", text));
            },
          ),
          MyListTile(
            title: "DataFrame Drop",
            onTap: () async {
              String text = await read("pandas/dataframedrop.py");
              Get.to(() => ReadCodeFromFile("DataFrame Drop", text));
            },
          ),
          MyListTile(
            title: "DataFrame Groupby",
            onTap: () async {
              String text = await read("pandas/groupby.py");
              Get.to(() => ReadCodeFromFile("DataFrame Groupby", text));
            },
          ),
          MyListTile(
            title: "DataFrame Insert",
            onTap: () async {
              String text = await read("pandas/dataframeinsert.py");
              Get.to(() => ReadCodeFromFile("DataFrame Insert", text));
            },
          ),
          MyListTile(
            title: "DataFrame Merge Tables",
            onTap: () async {
              String text = await read("pandas/mergetables.py");
              Get.to(() => ReadCodeFromFile("DataFrame Merge Tables", text));
            },
          ),
          MyListTile(
            title: "DataFrame MultiIndex",
            onTap: () async {
              String text = await read("pandas/multiindex.py");
              Get.to(() => ReadCodeFromFile("DataFrame MultiIndex", text));
            },
          ),
          MyListTile(
            title: "DataFrame Statistics",
            onTap: () async {
              String text = await read("pandas/statistics.py");
              Get.to(() => ReadCodeFromFile("DataFrame Statistics", text));
            },
          ),
          MyListTile(
            title: "DateTime",
            onTap: () async {
              String text = await read("pandas/datetime.py");
              Get.to(() => ReadCodeFromFile("DateTime", text));
            },
          ),
          MyListTile(
            title: "GetDummies",
            onTap: () async {
              String text = await read("pandas/getdummies.py");
              Get.to(() => ReadCodeFromFile("GetDummies", text));
            },
          ),
          MyListTile(
            title: "Index",
            onTap: () async {
              String text = await read("pandas/index.py");
              Get.to(() => ReadCodeFromFile("Index", text));
            },
          ),
          MyListTile(
            title: "Plot",
            onTap: () async {
              String text = await read("pandas/plot.py");
              Get.to(() => ReadCodeFromFile("Plot", text));
            },
          ),
          MyListTile(
            title: "Read Files",
            onTap: () async {
              String text = await read("pandas/readfiles.py");
              Get.to(() => ReadCodeFromFile("Read Files", text));
            },
          ),
          MyListTile(
            title: "Reset Index",
            onTap: () async {
              String text = await read("pandas/resetindex.py");
              Get.to(() => ReadCodeFromFile("Reset Index", text));
            },
          ),
          MyListTile(
            title: "Series",
            onTap: () async {
              String text = await read("pandas/series.py");
              Get.to(() => ReadCodeFromFile("Series", text));
            },
          ),
          MyListTile(
            title: "Series String",
            onTap: () async {
              String text = await read("pandas/seriesstring.py");
              Get.to(() => ReadCodeFromFile("Series String", text));
            },
          ),
        ],
      ),
    );
  }
}
