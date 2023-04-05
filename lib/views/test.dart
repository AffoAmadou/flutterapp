import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/assets/images/images.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/widgets/navbar.dart';

// test the navbar on a void page';

class TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.gray,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Navbar()],
      ),
    );
  }
}
