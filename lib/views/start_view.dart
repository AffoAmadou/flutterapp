import 'package:flutter/material.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';


class StartView extends StatefulWidget {
  @override
  _StartViewState createState() => _StartViewState();
}
class _StartViewState extends State<StartView> {
  var users = ["flo", "fla", "fli", "flu", "flo", "fla", "fli", "flu", "flo", "fla", "fli", "flu"];
  String userName = 'John';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("dataghvuzvz", style: CustomTextStyles.h1),
          // Image.asset(CustomImages.s),
          const SizedBox(height: 20),
          
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
