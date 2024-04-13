import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';

class MenuWidget extends StatelessWidget {
  final Map menu;
  const MenuWidget({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(menu['title']);
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          // color: Colors.white,
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
            width: 4,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Image.asset(
                menu['img'],
                // width: 90,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              menu['title'],
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
