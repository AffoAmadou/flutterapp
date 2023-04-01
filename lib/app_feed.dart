
import 'package:flutter/material.dart';
import 'views/start_view.dart';

class AppFeed extends StatelessWidget {
  const AppFeed({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartView(),
    );
  }
}
