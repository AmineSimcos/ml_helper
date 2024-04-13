import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class NumpyScreen extends StatelessWidget {
  const NumpyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/numpy.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Numpy'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          MyListTile(title: "Arrays"),
          MyListTile(title: "Arrays Count"),
          MyListTile(title: "Arrays Numbers"),
          MyListTile(title: "Arrays Operations"),
          MyListTile(title: "Astype"),
          MyListTile(title: "Date"),
          MyListTile(title: "Degrees"),
          MyListTile(title: "FromFunction"),
          MyListTile(title: "Math"),
          MyListTile(title: "Open File"),
          MyListTile(title: "Polynomial"),
          MyListTile(title: "Random"),
          MyListTile(title: "Where"),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  const MyListTile({
    super.key,
    this.onTap,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: const GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              Colors.cyan,
              Colors.deepPurple,
              Colors.pink,
              Colors.redAccent,
              // Colors.amber
            ],
          ),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(title!),
        trailing: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => const RadialGradient(
            center: Alignment.topCenter,
            stops: [.5, 1],
            colors: [
              Colors.pink,
              Colors.yellow,
            ],
          ).createShader(bounds),
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
          ),
        ),
      ),
    );
  }
}
