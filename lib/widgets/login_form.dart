import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/button.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _email = '';

  final String inscriptioText = 'Se connecter';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 327.w,
            padding: const EdgeInsets.only(bottom: 17.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Ton adresse mail',
                filled: true,
                fillColor: CustomColors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email address';
                } else if (!value.contains('@')) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
              onSaved: (value) {
                _firstName = value!;
              },
            ),
          ),
          SizedBox(
            width: 327.w,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Ton mot de passe',
                filled: true,
                fillColor: CustomColors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Mdp invalide';
                }
                return null;
              },
              onSaved: (value) {
                _lastName = value!;
              },
            ),
          ),
          SizedBox(height: 22.h),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                // Your code here
              },
              child: Text(
                'Mot de passe oublié ?',
                style: CustomTextStyles.underText,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Center(
            child: CustomButton(
              text: inscriptioText,
              backgroundColor: CustomColors.purple,
              height: 56.h,
              width: 327.w,
              textStyle: CustomTextStyles.onBoardingHSub,
            //  on pressed go to plan view
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print('First Name: $_firstName');
                  print('Last Name: $_lastName');
                  print('Email: $_email');
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
