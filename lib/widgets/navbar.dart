import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/assets/images/images.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutterapp/assets/icons/icons.dart';
import 'package:flutterapp/widgets/icon.dart';

class Navbar extends StatefulWidget {
  @override
  _navbarState createState() => _navbarState();
}

class _navbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 375.w,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: Offset(0, 0),
            blurRadius: 35,
          ),
        ],
      ),
      // rounded upper edges box with 3 icons and no words
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconBox(
            onPressed: () {
              Navigator.pushNamed(context, '/start');
            },
            iconImg: Image.asset(CustomIcons.home),
          ),
          // space
          SizedBox(
            width: 15.w,
          ),
          iconBox(
            onPressed: () {
              Navigator.pushNamed(context, '/plan');
            },
            iconImg: Image.asset(CustomIcons.plus),
          ),
          SizedBox(
            width: 15.w,
          ),
          iconBox(
            onPressed: () {
              Navigator.pushNamed(context, '/singin');
            },
            iconImg: Image.asset(CustomIcons.profile),
          )
        ],
      ),
    );
  }
}
