import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/random.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Random'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Random Basics",
            onTap: () async {
              String text = await read("random/randombasics.py");
              Get.to(() => ReadCodeFromFile("Random Basics", text));
            },
          ),
        ],
      ),
    );
  }
}
