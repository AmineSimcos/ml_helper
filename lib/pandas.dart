import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class PandasScreen extends StatelessWidget {
  const PandasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/pandas.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Pandas'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          MyListTile(title: "DataFrame 1"),
          MyListTile(title: "DataFrame 2"),
          MyListTile(title: "DataFrame Drop"),
          MyListTile(title: "DataFrame Groupby"),
          MyListTile(title: "DataFrame Insert"),
          MyListTile(title: "DataFrame Merge Tables"),
          MyListTile(title: "DataFrame MultiIndex"),
          MyListTile(title: "DataFrame Statistics"),
          MyListTile(title: "DateTime"),
          MyListTile(title: "GetDummies"),
          MyListTile(title: "Index"),
          MyListTile(title: "Plot"),
          MyListTile(title: "Read Files"),
          MyListTile(title: "Reset Index"),
          MyListTile(title: "Series"),
          MyListTile(title: "Series index"),
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
