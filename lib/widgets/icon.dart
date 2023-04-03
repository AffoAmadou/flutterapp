import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/assets/icons/icons.dart';

class iconBox extends StatelessWidget {
  // constructor that takes the name of the icon as a string

  final Image iconImg;
  final void Function()? onPressed;

  iconBox({
    required this.iconImg,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: CustomColors.lightGray,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Container(
          height: 50.h,
          width: 50.w,
          child: IconButton(
            icon: iconImg,
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
