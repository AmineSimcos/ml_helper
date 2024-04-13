import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class TensorflowScreen extends StatelessWidget {
  const TensorflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/tensorflow.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Tensorflow'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Constant",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data - Boston",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data - Cifar 10",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data - Cifar 100",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data - Fashion",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data - IMDB",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data - Mnist",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data - Reuters",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Eager Execution",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Graph",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Operations",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Place Holder",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Sesssion",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Variable",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          ///////////////////////////////////
          MyListTile(
            title: "Feature Column",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "GDO",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Input Function",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "TF DNN Classifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "TF DNN Regressor",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "TF GBDTC",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "TF Linear Classifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "TF Linear Regressor",
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
