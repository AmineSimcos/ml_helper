import 'dart:io';

Future read(path) async {
  String text = "";
  try {
    // final Directory directory = await getApplicationDocumentsDirectory();
    // var dir = Directory.fromUri(Uri.directory(''));
    // final File file = File('${dir.absolute.path}assets/files/${path}');
    final File file = File('assets/files/$path');
    // print(dir.absolute.path);
    // print(directory);
    text = await file.readAsString();
    // controller!.text = text;
    print(text);
  } catch (e) {
    print("Couldn't read file");
  }
  return text;
  // return text;
}
