import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.onChanged,
    this.filledColor = Colors.white10,
    this.suffixIcon,
  });

  final String hintText;
  final Widget? prefixIcon;
  final Function(String value)? onChanged;
  final Color? filledColor;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColorConst.white),
      onChanged: onChanged,
      onTapOutside: (val) {
        FocusScope.of(context).unfocus();
      },
      cursorColor: Colors.green,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColorConst.fillTextColor),
          filled: true,
          fillColor: filledColor,
          suffixIcon: suffixIcon,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(30)))),
    );
  }
}
