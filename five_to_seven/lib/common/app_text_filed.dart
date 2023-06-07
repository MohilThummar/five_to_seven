import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;

  const AppTextFiled({
    super.key,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.textInputAction,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        prefixIcon: Icon(prefixIcon!),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
