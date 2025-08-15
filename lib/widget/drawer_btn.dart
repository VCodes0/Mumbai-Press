import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class DrawerBtn extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const DrawerBtn({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mq.width,
      height: mq.height * 0.052,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mq.width * 0.035,
            vertical: mq.height * 0.002,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: CupertinoColors.black,
              fontSize: mq.width * 0.05,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
