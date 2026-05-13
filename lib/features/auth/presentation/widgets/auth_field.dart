import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    this.hintText,
    this.labelText,
    this.validator,
    required this.controller,
    this.isObscuredText = false,
  });

  final String? hintText;
  final String? labelText;
  final TextEditingController controller;
  final bool isObscuredText;

  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hint: hintText != null ? Text(hintText!) : null,
        label: labelText != null ? Text(labelText!) : null,
      ),
      obscureText: isObscuredText,
      obscuringCharacter: "*",
      validator: validator,
    );
  }
}
