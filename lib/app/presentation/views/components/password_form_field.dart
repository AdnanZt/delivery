import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    Key? key,
    this.formKey,
    required this.text,
    this.onChanged,
    this.validator,
    this.contentPadding,
    this.keyboardType,
    this.obscureText = true,
    this.suffixIcon,
    this.readOnly = false,
    this.focusNode,
    this.controller,
  }) : super(key: key);

  final String text;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final EdgeInsetsGeometry? contentPadding;
  final Key? formKey;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;

  final bool obscureText;
  final Widget? suffixIcon;
  final bool readOnly;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      focusNode: focusNode,
      readOnly: readOnly,
      key: formKey,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        fillColor: Colors.transparent,
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        errorMaxLines: 3,
      ),
    );
  }
}
