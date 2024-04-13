import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class TensorflowScreen extends StatelessWidget {
  const TensorflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/tensorflow.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Tensorflow'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          MyListTile(title: "Constant"),
          MyListTile(title: "Data - Boston"),
          MyListTile(title: "Data - Cifar 10"),
          MyListTile(title: "Data - Cifar 100"),
          MyListTile(title: "Data - Fashion"),
          MyListTile(title: "Data - IMDB"),
          MyListTile(title: "Data - Mnist"),
          MyListTile(title: "Data - Reuters"),
          MyListTile(title: "Eager Execution"),
          MyListTile(title: "Graph"),
          MyListTile(title: "Operations"),
          MyListTile(title: "Place Holder"),
          MyListTile(title: "Sesssion"),
          MyListTile(title: "Variable"),
          ///////////////////////////////////
          MyListTile(title: "Feature Column"),
          MyListTile(title: "GDO"),
          MyListTile(title: "Input Function"),
          MyListTile(title: "TF DNN Classifier"),
          MyListTile(title: "TF DNN Regressor"),
          MyListTile(title: "TF GBDTC"),
          MyListTile(title: "TF Linear Classifier"),
          MyListTile(title: "TF Linear Regressor"),
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
