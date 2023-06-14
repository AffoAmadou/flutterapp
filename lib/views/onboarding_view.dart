import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/assets/images/images.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/widgets/button.dart';

class OnboardingView extends StatefulWidget {
  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final String titleWhite = 'PAS DE SOUS ?';
  final String titlePink = "Y'A PADSOU.";
  final String buttonText = "C'EST PARTI !";

  final List<String> subtitles = [
    'Accède aux 500 bons plans qu’on te propose chaque mois',
    'BUUU',
    'BAAA',
  ];

  final List<String> images = [
    CustomImages.s,
    CustomImages.s,
    CustomImages.s,
  ];

  final SwiperController _controller = SwiperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 98.h),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(titleWhite,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.onBoardingH),
                Text(titlePink,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.onBoardingHPink)
              ],
            ),
          ),
          SizedBox(height: 78.h),
          Expanded(
            flex: 1,
            child: Swiper(
              controller: _controller,
              itemCount: subtitles.length,
              loop: false,
              pagination: SwiperCustomPagination(
                builder: (BuildContext context, SwiperPluginConfig config) {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(config.itemCount, (index) {
                        final isActive = index == config.activeIndex;
                        return GestureDetector(
                          onTap: () => config.pageController?.jumpToPage(index),
                          child: Container(
                            width: 25.w,
                            height: 5.h,
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            decoration: BoxDecoration(
                              color: isActive
                                  ? CustomColors.white
                                  : CustomColors.white40,
                              borderRadius: BorderRadius.circular(4.w),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    // color: CustomColors.pink,
                    child: Column(
                  children: <Widget>[
                    // Image.asset(
                    //   images[index],
                    //   height: 200.0,
                    //   width: 200.0,
                    // ),
                    SizedBox(height: 28.77.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: CustomColors.white,
                      ),
                      height: 250.h,
                      width: 250.w,
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: 244.w,
                      child: Text(
                        subtitles[index],
                        style: CustomTextStyles.onBoardingMain,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ));
              },
            ),
          ),
          SizedBox(height: 113.h),
          //add a button
          CustomButton(
            height: 56.h,
            width: 261.w,
            text: buttonText,
            backgroundColor: CustomColors.pink,
            textStyle: CustomTextStyles.onBoardingHSub,
            onPressed:(){},
            
          ),
          SizedBox(height: 47.h),
        ],
      ),
    );
  }
}
