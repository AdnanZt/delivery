import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    this.width = 200,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final double width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF404040),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color(0xFF404040),
          width: 0.5,
        ),
      ),
      width: width,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF404040),
        ),
        child: Text(text),
      ),
    );
  }
}
