import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class MathsScreen extends StatelessWidget {
  const MathsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/maths.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Maths'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Library",
            onTap: () async {
              String text = await read("maths\\mathlibrary.py");
              Get.to(() => ReadCodeFromFile("Math library", text));
            },
          ),
          MyListTile(
            title: "Operations",
            onTap: () async {
              String text = await read("maths\\mathoperations.py");
              Get.to(() => ReadCodeFromFile("Math Operations", text));
            },
          ),
        ],
      ),
    );
  }
}
