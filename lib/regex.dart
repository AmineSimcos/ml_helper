import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class RegexScreen extends StatelessWidget {
  const RegexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/regex.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Re'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Re Compile",
            onTap: () async {
              String text = await read("re\\compile.py");
              Get.to(() => ReadCodeFromFile("Re Compile", text));
            },
          ),
        ],
      ),
    );
  }
}
