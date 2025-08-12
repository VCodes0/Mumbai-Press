import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;

  const MTextField({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder customBorder(Color color, double width) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color, width: width),
      );
    }

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: CupertinoColors.black),
        hintText: hintText,
        hintStyle: TextStyle(color: CupertinoColors.black),
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 18,
        ),
        enabledBorder: customBorder(CupertinoColors.inactiveGray, 1.5),
        focusedBorder: customBorder(CupertinoColors.systemRed, 2.0),
        errorBorder: customBorder(CupertinoColors.systemRed, 1.5),
        focusedErrorBorder: customBorder(CupertinoColors.destructiveRed, 2.0),
      ),
    );
  }
}
