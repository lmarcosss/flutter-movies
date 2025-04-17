import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              backgroundColor: const Color(0xff32A873),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xff121212),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
