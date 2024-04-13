// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_helper/about.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'theme/theme_controller.dart';
import 'theme/theme_service.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final MyThemeController myThemeController = Get.find<MyThemeController>();
  final Uri _url = Uri.parse('https://flutter.dev');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          padding: const EdgeInsets.all(8),
          width: Get.width,
          color: Get.isDarkMode ? Colors.black : Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 36),
              Row(
                children: [
                  Image.asset(
                    "assets/images/mlhelper.png",
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ML Helper"),
                      Text(
                        "1.0.0",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "An Application showcasing Flutter comonents, with side-by-side source code view.",
                style: TextStyle(fontSize: 12),
              ),
              // SizedBox(height: 20),
              const Spacer(),
              const Text('Developed by B.Med Amine.'),
            ],
          ),
        ),
        Container(height: 0.5, color: Colors.black12),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                trailing: Switch(
                  value: myThemeController.isDark,
                  activeColor: Colors.amber,
                  onChanged: (val) {
                    setState(() {
                      ThemeService().changeTheme();
                      myThemeController.isDark = val;
                      Get.back();
                    });
                  },
                ),
                leading: const Icon(EvaIcons.moon),
                title: const Text('Dark mode'),
                onTap: () {
                  ThemeService().changeTheme();
                  myThemeController.isDark = !myThemeController.isDark;
                  Get.back();
                  // Get.to(() => AddPromo());
                },
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: const Icon(EvaIcons.code),
                title: const Text('Source code on Github'),
                onTap: () async {
                  Get.back();
                  if (!await launchUrl(_url)) {
                    throw Exception('Could not launch $_url');
                  }
                },
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: const Icon(EvaIcons.share),
                title: const Text('Share'),
                onTap: () async {
                  Get.back();
                  final result =
                      await Share.shareWithResult('App URL : "www.app.com');

                  if (result.status == ShareResultStatus.success) {
                    print('Thank you for sharing my website!');
                  }
                },
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: const Icon(EvaIcons.alertCircleOutline),
                title: const Text('About'),
                onTap: () {
                  Get.back();
                  Get.to(() => const AboutScreen());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
