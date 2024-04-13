import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class SeabornScreen extends StatelessWidget {
  const SeabornScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/seaborn.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Seaborn'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          MyListTile(title: "Seaborn Barplot 1"),
          MyListTile(title: "Seaborn Barplot 2"),
          MyListTile(title: "Seaborn Barplot 3"),
          MyListTile(title: "Seaborn Barplot 4"),
          MyListTile(title: "Seaborn Barplot 5"),
          MyListTile(title: "Seaborn Barplot 6"),
          MyListTile(title: "Seaborn Barplot 7"),
          MyListTile(title: "Seaborn Boxplot 1  "),
          MyListTile(title: "Seaborn Boxplot 2"),
          MyListTile(title: "Seaborn Boxplot 3"),
          MyListTile(title: "Seaborn Catplot Bar"),
          MyListTile(title: "Seaborn Catplot Box"),
          MyListTile(title: "Seaborn Catplot Count"),
          MyListTile(title: "Seaborn Countplot 1"),
          MyListTile(title: "Seaborn Countplot 2"),
          MyListTile(title: "Seaborn Countplot 3"),
          MyListTile(title: "Seaborn Data 1"),
          MyListTile(title: "Seaborn Data 2"),
          MyListTile(title: "Seaborn Data 3"),
          MyListTile(title: "Seaborn Distplot"),
          MyListTile(title: "Seaborn FacetGrid 1"),
          MyListTile(title: "Seaborn FacetGrid 2"),
          MyListTile(title: "Seaborn FacetGrid 3"),
          MyListTile(title: "Seaborn FacetGrid 4"),
          MyListTile(title: "Seaborn FacetGrid 5"),
          MyListTile(title: "Seaborn Jointplot"),
          MyListTile(title: "Seaborn Kdeplot 1"),
          MyListTile(title: "Seaborn Kdeplot 2"),
          MyListTile(title: "Seaborn Pairplot 1"),
          MyListTile(title: "Seaborn Pairplot 2"),
          MyListTile(title: "Seaborn Pairplot 3"),
          MyListTile(title: "Seaborn Pairplot 4"),
          MyListTile(title: "Seaborn Pairplot 5"),
          MyListTile(title: "Seaborn Pairplot 6"),
          MyListTile(title: "Seaborn Swarmplot"),
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
