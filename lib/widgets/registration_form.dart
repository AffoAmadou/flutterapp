import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/button.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _email = '';

  final String inscriptioText = 'S\'inscrire';
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
          Container(
            width: 327.w,
            padding: const EdgeInsets.only(bottom: 17.0),
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
          Container(
            width: 327.w,
            padding: const EdgeInsets.only(bottom: 17.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirme ton mot de passe',
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
                _email = value!;
              },
            ),
          ),
          const SizedBox(height: 63),
          SizedBox(
            width: 324.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("En t’inscrivant, tu acceptes les Conditions générales d’utilisation de Padsou",
                    style: CustomTextStyles.underText),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Center(
            child: CustomSizedBox(
              text: inscriptioText,
              backgroundColor: CustomColors.purple,
              height: 56.h,
              width: 327.w,
              textStyle: CustomTextStyles.onBoardingHSub,
            ),
          )
        ],
      ),
      
    );
  }
}
