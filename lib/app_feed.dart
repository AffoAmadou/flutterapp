import 'package:flutter/material.dart';
import 'views/start_view.dart';
import 'views/onboarding_view.dart';
import 'views/plan.dart';
import 'views/signin_view.dart';
import 'views/login_view.dart';
import 'views/addplan_view.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFeed extends StatelessWidget {
  const AppFeed({Key? key}) : super(key: key); // Corrected constructor

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
            home: FutureBuilder(
              future: isFirstTime(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data == true) {
                    return OnboardingView();
                  } else {
                    return StartView();
                  }
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            routes: {
              '/start': (context) => StartView(),
              '/onboarding': (context) => OnboardingView(),
              '/plan': (context) => PlanView(),
              '/signin': (context) => SigninView(),
              '/login': (context) => LoginView(),
            },
          );
        });
  }
}

Future<bool> isFirstTime() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool firstTime = prefs.getBool('first_time') ?? true;

  if (firstTime) {
    await prefs.setBool('first_time', false);
  }

  return firstTime;
}
