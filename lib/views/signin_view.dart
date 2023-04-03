import 'package:flutter/material.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/widgets/registration_form.dart';
import 'package:flutterapp/widgets/lint_text.dart';

class SigninView extends StatefulWidget {
  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final String titleBlue = 'Bienvenue 😎';
  final String subText =
      'Inscris-toi pour avoir les meilleurs plans étudiants !';

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
          SizedBox(height: 63.h),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: RegistrationForm(),
            ),
          ),
          SizedBox(height: 173.h),
          LinkText(
            text: 'Déjà inscrit ?',
            linkText: 'Connecte-toi!',
            onTap: () => Navigator.pushNamed(context, '/login'),
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}

