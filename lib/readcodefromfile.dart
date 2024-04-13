import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
// import 'package:flutter_highlight/themes/a11y-dark.dart';
// import 'package:flutter_highlight/themes/xcode.dart';
// import 'package:flutter_highlight/themes/dracula.dart';
import 'package:get/get.dart';
import 'package:highlight/languages/python.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';

class ReadCodeFromFile extends StatelessWidget {
  final String title;
  final String text;
  ReadCodeFromFile(this.title, this.text, {super.key});

  CodeController? controller;

  @override
  Widget build(BuildContext context) {
    controller = CodeController(
      readOnly: true,
      language: python,
      text: text,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: text)).then(
                  (value) => Get.rawSnackbar(
                    message: "Copied to your clipboard !",
                    // padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(8),
                  ),
                );
                // copied successfully
              },
              icon: Icon(Icons.copy_all)),
          IconButton(
              onPressed: () async {
                final result =
                    await Share.shareWithResult('Source code :\n${text}');

                if (result.status == ShareResultStatus.success) {
                  print('Thank you for sharing my website!');
                }
              },
              icon: Icon(Icons.share)),
        ],
      ),
      body: CodeTheme(
        // data: CodeThemeData(styles: a11yDarkTheme),
        // data: CodeThemeData(styles: xcodeTheme),
        // data: CodeThemeData(styles: draculaTheme),
        data: CodeThemeData(styles: monokaiSublimeTheme),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: TextField(
            controller: controller,
            maxLines: null,
          ),
        ),
      ),
    );
  }
}
