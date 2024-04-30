// ignore_for_file: no_logic_in_create_state

import 'package:e_com_flutter_app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;
  final Key? formKey;
  final bool? obscureText;
  final IconData? iconData;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? enabled;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? mainPadding;
  final EdgeInsetsGeometry? margin;
  final void Function()? onObscureTap;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final InputCounterWidgetBuilder? buildCounter;
  const CustomTextField({
    super.key,
    this.padding,
    this.margin,
    this.hintText,
    this.obscureText,
    this.controller,
    this.iconData,
    this.onObscureTap,
    this.focusNode,
    this.inputFormatters,
    this.validator,
    this.formKey,
    this.enabled,
    this.keyboardType,
    this.onTap,
    this.onChanged,
    this.mainPadding,
    this.buildCounter,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState(obscureText);
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool? isObscureText;

  _CustomTextFieldState(this.isObscureText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 0, right: 16, left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              '${widget.hintText}',
              style: context.textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            enabled: widget.enabled ?? true,
            controller: widget.controller,
            keyboardType: widget.keyboardType ?? TextInputType.visiblePassword,
            obscureText: widget.obscureText != null ? (isObscureText ?? widget.obscureText!) : false,
            inputFormatters: widget.inputFormatters ?? [],
            style: context.textTheme.bodyLarge,
            validator: widget.validator,
            buildCounter: widget.buildCounter,
            // cursorColor: Colors.black54,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: widget.hintText ?? "Password",
              hintStyle: context.textTheme.bodyLarge?.copyWith(color: context.isDarkMode ? Colors.grey.shade200 : Colors.grey.shade700, fontSize: 15),
              filled: true,
              fillColor: context.isDarkMode ? Colors.grey.shade900 : Colors.grey.shade300,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: widget.iconData == null
                  ? null
                  : Icon(
                      widget.iconData ?? Icons.lock_rounded,
                      size: 24,
                      color: Palettes.primary,
                    ),
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                child: GestureDetector(
                  onTap: () {
                    if (widget.obscureText != null) setState(() => isObscureText = !isObscureText!);
                  },
                  child: widget.obscureText != null
                      ? Icon(
                          (isObscureText ?? widget.obscureText!) ? Icons.visibility_off_rounded : Icons.visibility_rounded,
                          size: 24,
                          color: Colors.grey,
                        )
                      : const SizedBox(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
