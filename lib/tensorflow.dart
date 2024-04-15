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
              String text = await read("tensorflow/constant.py");
              Get.to(() => ReadCodeFromFile("Constant", text));
            },
          ),
          MyListTile(
            title: "Data - Boston",
            onTap: () async {
              String text = await read("tensorflow/boston.py");
              Get.to(() => ReadCodeFromFile("Data - Boston", text));
            },
          ),
          MyListTile(
            title: "Data - Cifar 10",
            onTap: () async {
              String text = await read("tensorflow/cifar10.py");
              Get.to(() => ReadCodeFromFile("Data - Cifar 10", text));
            },
          ),
          MyListTile(
            title: "Data - Cifar 100",
            onTap: () async {
              String text = await read("tensorflow/cifar100.py");
              Get.to(() => ReadCodeFromFile("Data - Cifar 100", text));
            },
          ),
          MyListTile(
            title: "Data - Fashion",
            onTap: () async {
              String text = await read("tensorflow/fashion.py");
              Get.to(() => ReadCodeFromFile("Data - Fashion", text));
            },
          ),
          MyListTile(
            title: "Data - IMDB",
            onTap: () async {
              String text = await read("tensorflow/imdb.py");
              Get.to(() => ReadCodeFromFile("Data - IMDB", text));
            },
          ),
          MyListTile(
            title: "Data - Mnist",
            onTap: () async {
              String text = await read("tensorflow/mnist.py");
              Get.to(() => ReadCodeFromFile("Data - Mnist", text));
            },
          ),
          MyListTile(
            title: "Data - Reuters",
            onTap: () async {
              String text = await read("tensorflow/reuters.py");
              Get.to(() => ReadCodeFromFile("Data - Reuters", text));
            },
          ),
          MyListTile(
            title: "Eager Execution",
            onTap: () async {
              String text = await read("tensorflow/eagerexecution.py");
              Get.to(() => ReadCodeFromFile("Eager Execution", text));
            },
          ),
          MyListTile(
            title: "Graph",
            onTap: () async {
              String text = await read("tensorflow/graph.py");
              Get.to(() => ReadCodeFromFile("Graph", text));
            },
          ),
          MyListTile(
            title: "Operations",
            onTap: () async {
              String text = await read("tensorflow/operations.py");
              Get.to(() => ReadCodeFromFile("Operations", text));
            },
          ),
          MyListTile(
            title: "Place Holder",
            onTap: () async {
              String text = await read("tensorflow/placeholder.py");
              Get.to(() => ReadCodeFromFile("Place Holder", text));
            },
          ),
          MyListTile(
            title: "Sesssion",
            onTap: () async {
              String text = await read("tensorflow/session.py");
              Get.to(() => ReadCodeFromFile("Sesssion", text));
            },
          ),
          MyListTile(
            title: "Variable",
            onTap: () async {
              String text = await read("tensorflow/variable.py");
              Get.to(() => ReadCodeFromFile("Variable", text));
            },
          ),
          ///////////////////////////////////
          MyListTile(
            title: "Feature Column",
            onTap: () async {
              String text = await read("tensorflow/featurecolumn.py");
              Get.to(() => ReadCodeFromFile("Feature Column", text));
            },
          ),
          MyListTile(
            title: "GDO",
            onTap: () async {
              String text = await read("tensorflow/gdo.py");
              Get.to(() => ReadCodeFromFile("GDO", text));
            },
          ),
          MyListTile(
            title: "Input Function",
            onTap: () async {
              String text = await read("tensorflow/inputfunction.py");
              Get.to(() => ReadCodeFromFile("Input Function", text));
            },
          ),
          MyListTile(
            title: "TF DNN Classifier",
            onTap: () async {
              String text = await read("tensorflow/dnnclassifier.py");
              Get.to(() => ReadCodeFromFile("TF DNN Classifier", text));
            },
          ),
          MyListTile(
            title: "TF DNN Regressor",
            onTap: () async {
              String text = await read("tensorflow/dnnregressor.py");
              Get.to(() => ReadCodeFromFile("TF DNN Regressor", text));
            },
          ),
          MyListTile(
            title: "TF GBDTC",
            onTap: () async {
              String text = await read("tensorflow/gbdtc.py");
              Get.to(() => ReadCodeFromFile("TF GBDTC", text));
            },
          ),
          MyListTile(
            title: "TF Linear Classifier",
            onTap: () async {
              String text = await read("tensorflow/linearclassifier.py");
              Get.to(() => ReadCodeFromFile("TF Linear Classifier", text));
            },
          ),
          MyListTile(
            title: "TF Linear Regressor",
            onTap: () async {
              String text = await read("tensorflow/linearregressor.py");
              Get.to(() => ReadCodeFromFile("TF Linear Regressor", text));
            },
          ),
        ],
      ),
    );
  }
}
