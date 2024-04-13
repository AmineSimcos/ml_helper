import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/file.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('File'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MyListTile(
            title: "CSV write",
            onTap: () async {
              String text = await read("file/csvwrite.py");
              Get.to(() => ReadCodeFromFile("CSV write", text));
            },
          ),
          MyListTile(
            title: "Excel read",
            onTap: () async {
              String text = await read("file/excelread.py");
              Get.to(() => ReadCodeFromFile("Excel read", text));
            },
          ),
          MyListTile(
            title: "Excel write",
            onTap: () async {
              String text = await read("file/excelwrite.py");
              Get.to(() => ReadCodeFromFile("Excel write", text));
            },
          ),
          MyListTile(
            title: "File Append",
            onTap: () async {
              String text = await read("file/fileappend.py");
              Get.to(() => ReadCodeFromFile("File Append", text));
            },
          ),
          MyListTile(
            title: "File read",
            onTap: () async {
              String text = await read("file/fileread.py");
              Get.to(() => ReadCodeFromFile("File read", text));
            },
          ),
          MyListTile(
            title: "File write",
            onTap: () async {
              String text = await read("file/filewrite.py");
              Get.to(() => ReadCodeFromFile("File write", text));
            },
          ),
          MyListTile(
            title: "Glob library",
            onTap: () async {
              String text = await read("file/glob.py");
              Get.to(() => ReadCodeFromFile("Glob library", text));
            },
          ),
          MyListTile(
            title: "Shutil library",
            onTap: () async {
              String text = await read("file/shutil.py");
              Get.to(() => ReadCodeFromFile("Shutil library", text));
            },
          ),
        ],
      ),
    );
  }
}
