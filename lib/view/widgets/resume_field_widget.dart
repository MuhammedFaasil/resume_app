import 'package:flutter/material.dart';

class ResumeField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Text? labelText;
  final Icon? prefixIcon;
  final int? maxLines;

  const ResumeField({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        prefixIcon: prefixIcon,
        hintText: hintText,
        label: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
