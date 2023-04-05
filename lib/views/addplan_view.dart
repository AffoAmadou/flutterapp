import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/button.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class AddPlanView extends StatefulWidget {
  @override
  _AddPlanViewState createState() => _AddPlanViewState();
}

class _AddPlanViewState extends State<AddPlanView> {
  final String titleWhite = 'Ajouter';
  final String subtext = "Un bon plan pour en faire profiter les autres";
  final String buttonText = "C'EST PARTI !";

  final List<String> subtitles = [
    'Accède aux 500 ’on te propose chaque mois',
    'BUUU',
  ];

  final SwiperController _controller = SwiperController();
  final TextEditingController _input1Controller = TextEditingController();
  final TextEditingController _input2Controller = TextEditingController();
  final TextEditingController _input3Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.purple,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 98.h),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Add this line to align text to the left
                children: [
                  Text(titleWhite,
                      textAlign: TextAlign.start,
                      style: CustomTextStyles.h1White),
                  SizedBox(
                    width: 244.w, // replace with your desired width
                    child: Text(
                      subtext,
                      textAlign: TextAlign.start,
                      style: CustomTextStyles.onBoardingMain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 56.h),
            Container(
              height: 810.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.w),
                color: CustomColors.white,
              ),
              child: Swiper(
                controller: _controller,
                itemCount: subtitles.length,
                loop: false,
                pagination: SwiperCustomPagination(
                  builder: (BuildContext context, SwiperPluginConfig config) {
                    return Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        // Add this Padding widget
                        padding: const EdgeInsets.only(
                            top: 10), // Set the desired space here
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(config.itemCount, (index) {
                            final isActive = index == config.activeIndex;
                            return GestureDetector(
                              onTap: () =>
                                  config.pageController?.jumpToPage(index),
                              child: Container(
                                width: 46.w,
                                height: 7.h,
                                margin: EdgeInsets.symmetric(horizontal: 4.w),
                                decoration: BoxDecoration(
                                  color: isActive
                                      ? CustomColors.darkPurple
                                      : CustomColors.darkGray,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    );
                  },
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Label ${index + 1}",
                                  style: CustomTextStyles.onBoardingHSub),
                              SizedBox(height: 8.0),
                              TextField(
                                controller: index == 0
                                    ? _input1Controller
                                    : _input2Controller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Input ${index + 1}',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
