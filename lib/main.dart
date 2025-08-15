import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/splash_page.dart';

late Size mq;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: GetMaterialApp(
        title: "Mumbai Press",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.ralewayTextTheme(),
          appBarTheme: AppBarTheme(
            surfaceTintColor: CupertinoColors.white,
            centerTitle: true,
            elevation: 0,
            backgroundColor: CupertinoColors.white,
          ),
          scaffoldBackgroundColor: CupertinoColors.white,
        ),
        home: const SplashPage(),
      ),
    );
  }
}
