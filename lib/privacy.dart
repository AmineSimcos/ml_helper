import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:http/http.dart' as http;

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: fetchMarkdownContent(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur de chargement'));
          } else {
            return Markdown(data: snapshot.data!);
          }
        },
      ),
    );
  }

  Future<String> fetchMarkdownContent() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/AmineSimcos/ml_helper/main/privacy.md'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load Markdown content');
    }
  }
}
