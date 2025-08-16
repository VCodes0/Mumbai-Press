import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mumbai_press/services/terms.dart';
import 'package:mumbai_press/view/home_screen.dart';
import 'package:mumbai_press/widget/drawer_btn.dart';
import '../main.dart';
import 'about_us.dart';

class AllServices extends StatelessWidget {
  const AllServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: mq.width / 1.6,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mq.height * 0.07,
              child: Image.asset("assets/images/logo.png", fit: BoxFit.contain),
            ),
            SizedBox(height: mq.height * .02),
            DrawerBtn(text: "Home", onTap: () => Get.offAll(() => const HomeScreen())),
            Divider(),
            DrawerBtn(
              text: "Terms",
              onTap: () => Get.to(() => TermsAndConditionsScreen()),
            ),
            Divider(),
            DrawerBtn(
              text: "About Us",
              onTap: () => Get.to(() => AboutUsScreen()),
            ),
            Divider(),
            DrawerBtn(text: "Contact Us", onTap: () {}),
            Divider(),
            DrawerBtn(text: "Disclaimer", onTap: () {}),
            Divider(),
          ],
        ),
      ),
    );
  }
}
