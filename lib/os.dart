import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class OSScreen extends StatelessWidget {
  const OSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/os.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('OS'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "Default Path",
            onTap: () async {
              String text = await read("os/defaultpath.py");
              Get.to(() => ReadCodeFromFile("OS Default Path", text));
            },
          ),
          MyListTile(
            title: "File Exists",
            onTap: () async {
              String text = await read("os/fileexist.py");
              Get.to(() => ReadCodeFromFile("OS File Exists", text));
            },
          ),
          MyListTile(
            title: "Make Folder",
            onTap: () async {
              String text = await read("os/makefolder.py");
              Get.to(() => ReadCodeFromFile("OS Make Folder", text));
            },
          ),
        ],
      ),
    );
  }
}
