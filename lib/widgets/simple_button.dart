import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/palette.dart';

class SimpleButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final bool? isLoading;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final double? fontSize;

  const SimpleButton({
    super.key,
    this.isLoading = false,
    required this.onPressed,
    required this.text,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        onPressed: onPressed,
        child: isLoading!
            ? Platform.isIOS
                ? const CupertinoActivityIndicator(color: Palettes.primary)
                : const CircularProgressIndicator(color: Palettes.primary)
            : Text(
                text!,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: textColor ?? Colors.white,
                  fontSize: fontSize,
                ),
              ),
      ),
    );
  }
}
