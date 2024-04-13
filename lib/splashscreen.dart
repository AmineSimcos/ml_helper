import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ml_helper/welcome_screen.dart';
// import 'onboarding.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    var token = GetStorage().read("login_token");
    if (kDebugMode) {
      print("Read storage : $token");
    }
    Timer(const Duration(seconds: 3), () {
      Get.off(() => WelcomeScreen());
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/mlhelper.png",
              width: 140,
            ),
            const SizedBox(height: 10),
            const Text(
              "ML Helper",
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
