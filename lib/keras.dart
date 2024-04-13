import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class KerasScreen extends StatelessWidget {
  const KerasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/keras.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Keras'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Sequential NN",
            onTap: () async {
              String text = await read("keras\\sequentialnn.py");
              Get.to(() => ReadCodeFromFile("keras Sequential NN", text));
            },
          ),
        ],
      ),
    );
  }
}
