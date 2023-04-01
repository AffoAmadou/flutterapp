import 'package:flutter/material.dart';
import 'views/start_view.dart';
import 'views/onboarding_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFeed extends StatelessWidget {
  const AppFeed({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, data) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // home: StartView(),
            home: OnboardingView(),
          );
        });
  }
}