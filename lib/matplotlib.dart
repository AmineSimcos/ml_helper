import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class MatplotlibScreen extends StatelessWidget {
  const MatplotlibScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/matplotlib.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Matplotlib'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          MyListTile(title: "3D"),
          MyListTile(title: "3D Contour"),
          MyListTile(title: "3D Projection Plot"),
          MyListTile(title: "3D Scatter"),
          MyListTile(title: "3D Trisurf"),
          MyListTile(title: "3D Wire Frame"),
          MyListTile(title: "Annotate"),
          MyListTile(title: "Bar"),
          MyListTile(title: "Contour"),
          MyListTile(title: "Hexbin"),
          MyListTile(title: "Hist"),
          MyListTile(title: "Hist2D"),
          MyListTile(title: "Images"),
          MyListTile(title: "Imshow"),
          MyListTile(title: "Legend"),
          MyListTile(title: "Limits"),
          MyListTile(title: "Lines"),
          MyListTile(title: "Patches"),
          MyListTile(title: "Pie"),
          MyListTile(title: "Plot 1"),
          MyListTile(title: "Plot 2"),
          MyListTile(title: "Save"),
          MyListTile(title: "Scatter"),
          MyListTile(title: "Style"),
          MyListTile(title: "Subplot"),
          MyListTile(title: "Ticks"),
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
