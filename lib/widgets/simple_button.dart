import 'dart:io';

import 'package:e_com_flutter_app/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final bool? isLoading;

  const SimpleButton({
    super.key,
    this.isLoading = false,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: !isLoading! ? Palettes.primary : Colors.grey.shade400,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onPressed: onPressed,
          child: isLoading!
              ? Platform.isIOS
                  ? const CupertinoActivityIndicator(color: Palettes.primary)
                  : const CircularProgressIndicator(color: Palettes.primary)
              : Text(
                  text!,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
