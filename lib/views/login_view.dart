import 'package:flutter/material.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/widgets/login_form.dart';
import 'package:flutterapp/widgets/lint_text.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String titleBlue = 'Te revoilà ! 🔥';
  final String subText ='Reviens vite pour profiter des bons plans';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.gray,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 80.h),
          Center(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(titleBlue,
                      textAlign: TextAlign.center, style: CustomTextStyles.h1),
                  SizedBox(
                    width: 230.w,
                    child: Text(subText,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.mainSub),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 45.h),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: LoginForm(),
            ),
          ),
          LinkText(
            text: 'Pas encore inscrit ?',
            linkText: 'Allez viens !',
            onTap: () => Navigator.pushNamed(context, '/signin'),
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
             