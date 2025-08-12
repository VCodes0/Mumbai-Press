import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main.dart';
import '../auth/signup/signup_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      Get.to(() => SignupPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: mq.width,
        height: mq.height,
        child: Image.asset("assets/images/splash.jpg"),
      ),
    );
  }
}
