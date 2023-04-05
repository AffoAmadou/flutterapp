import 'package:flutter/material.dart';
import 'package:flutterapp/assets/colors/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final double height;
  final double width;
  final BorderRadius borderRadius;
  final TextStyle textStyle;

  const CustomButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.height,
    required this.width,
    this.borderRadius = const BorderRadius.all(Radius.circular(15)),
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      height: height,
      width: width,
      child: Center(
        child: Text(
          text,
          style: textStyle.copyWith(color: CustomColors.white),
        ),
      ),
    );
  }
}
