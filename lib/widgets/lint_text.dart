import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutterapp/assets/colors/colors.dart';


class LinkText extends StatelessWidget {
  final String text;
  final String linkText;
  final VoidCallback onTap;

  const LinkText({
    Key? key,
    required this.text,
    required this.linkText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
              color: CustomColors.darkGray,
            ),
          ),
          TextSpan(
            text: linkText,
            style: TextStyle(
              color: CustomColors.purple,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
