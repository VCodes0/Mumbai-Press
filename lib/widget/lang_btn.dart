import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class LangBtn extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const LangBtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mq.width * 0.6,
      height: mq.height * 0.07,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
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
    );
  }
}
