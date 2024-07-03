import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldText extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const FieldText({
    super.key,
    this.controller,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
