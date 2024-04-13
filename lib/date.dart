import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/date.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Date'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Basics",
            onTap: () async {
              String text = await read("date\\basics.py");
              Get.to(() => ReadCodeFromFile("Date Basics", text));
            },
          ),
          MyListTile(
            title: "Calculations",
            onTap: () async {
              String text = await read("date\\calculations.py");
              Get.to(() => ReadCodeFromFile("Date Calculations", text));
            },
          ),
          MyListTile(
            title: "Wait",
            onTap: () async {
              String text = await read("date\\wait.py");
              Get.to(() => ReadCodeFromFile("Date Wait", text));
            },
          ),
        ],
      ),
    );
  }
}
