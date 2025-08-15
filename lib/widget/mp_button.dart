import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class MpButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const MpButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = CupertinoColors.systemRed,
    this.textColor = CupertinoColors.white,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mq.width * 0.6,
      height: mq.height * 0.07,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
