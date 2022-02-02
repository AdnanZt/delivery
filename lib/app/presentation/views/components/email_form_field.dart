import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
    this.formKey,
    required this.text,
    this.onChanged,
    this.validator,
    this.contentPadding,
    this.obscureText = false,
    this.readOnly = false,
    this.focusNode,
    this.controller,
  }) : super(key: key);

  final String text;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final EdgeInsetsGeometry? contentPadding;
  final Key? formKey;
  final bool obscureText;
  final bool readOnly;
  final FocusNode? focusNode;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      readOnly: readOnly,
      focusNode: focusNode,
      key: formKey,
      keyboardType: TextInputType.emailAddress,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      validator: validator,
      decoration: InputDecoration(
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
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
      ),
    );
  }
}
