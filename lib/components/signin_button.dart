import 'package:flutter/material.dart';
import 'package:flutter_laravel_youtube/utils/config.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.width,
    required this.title,
    required this.disable,
    required this.onPressed,
  });
  final double width;
  final String title;
  final bool disable; // this one to disable/enable the button
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Config.primaryColor,
          foregroundColor: Colors.white,
        ),
        onPressed: disable ? null : onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
