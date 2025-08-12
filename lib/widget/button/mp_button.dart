import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    this.onPressed,
    this.backgroundColor = CupertinoColors.systemRed,
    this.textColor = CupertinoColors.white,
    this.borderRadius = 15.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
          fontSize: 19,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
