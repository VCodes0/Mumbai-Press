import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
import 'home_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.off(() => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: mq.width,
        height: mq.height,
        child: Center(child: Image.asset("assets/images/splash.jpg")),
      ),
    );
  }
}
