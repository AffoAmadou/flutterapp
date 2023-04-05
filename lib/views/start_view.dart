import 'package:flutter/material.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutterapp/widgets/navbar.dart';

class StartView extends StatefulWidget {
  @override
  _StartViewState createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(), // An empty container to occupy the body space
      bottomNavigationBar: Navbar(),
    );
  }
}
