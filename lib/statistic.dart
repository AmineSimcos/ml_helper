import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/statistic.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Statistics'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Statistics Library",
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
