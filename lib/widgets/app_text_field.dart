import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key, required this.hintText, required this.prefixIcon});

  final String hintText;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColorConst.white),
      onTapOutside: (val) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColorConst.fillTextColor),
          filled: true,
          fillColor: Colors.white10,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }
}
