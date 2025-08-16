import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mumbai_press/view/home_screen.dart';

import '../../main.dart';
import '../../widget/lang_btn.dart';
import '../../widget/mp_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mq.width * 0.05,
          vertical: mq.height * 0.03,
        ),
        child: Column(
          children: [
            // Logo/Image
            SizedBox(
              height: mq.height * 0.33,
              child: Image.asset("assets/images/logo.png"),
            ),

            SizedBox(height: mq.height * 0.02),

            // Instructional Text
            SizedBox(
              height: mq.height * 0.10,
              child: Center(
                child: Text(
                  "Select default Language \nYou can change it later",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    fontSize: mq.width * 0.045,
                  ),
                ),
              ),
            ),

            SizedBox(height: mq.height * 0.05),

            // Language selection buttons
            Expanded(
              child: Column(
                children: [
                  LangBtn(text: "English", onPressed: () {}),
                  SizedBox(height: mq.height * 0.02),
                  LangBtn(text: "Hindi", onPressed: () {}),
                  SizedBox(height: mq.height * 0.02),
                  LangBtn(text: "Urdu", onPressed: () {}),
                ],
              ),
            ),
            MpButton(
              text: "Done",
              onPressed: () {
                Get.to(() => HomeScreen());
              },
            ),
            SizedBox(height: mq.height * 0.02),
          ],
        ),
      ),
    );
  }
}
