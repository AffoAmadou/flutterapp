import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/assets/images/images.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/widgets/comment.dart';

class PlanView extends StatefulWidget {
  @override
  _PlanViewState createState() => _PlanViewState();
}

class _PlanViewState extends State<PlanView> {
  final String titleWhite = 'Abbonement 1 an';
  final String subtitle = '2 mois offerts';
  final String comment =
      "Chaque année, O'Tacos veut vous mettre bien. On sait que t'es étudiant et que c'est la galère, alors on t'a prévu des giga MAXI TACOS à des giga BAS PRIX. Ca se passe maintenant !";
  final String author = 'Killian74';
  final int rating = 2;
  final Image avatar = Image.asset(CustomImages.avatar);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.gray,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Comment(
            comment: comment,
            author: author,
            rating: rating,
            avatar: avatar,
          ),
        ],
      ),
    );
  }
}
