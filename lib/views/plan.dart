import 'package:flutter/material.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/assets/images/images.dart';
import 'package:flutterapp/ui/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/widgets/comment.dart';
import 'package:flutterapp/widgets/button.dart';

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

  final Comment comment1 = Comment(
    comment:
        "Chaque année, O'Tacos veut vous mettre bien. On sait que t'es étudiant et que c'est la galère, alors on t'a prévu des giga MAXI TACOS à des giga BAS PRIX. Ca se passe maintenant !",
    author: 'Killian74',
    rating: 2,
    avatar: Image.asset(CustomImages.avatar),
  );
  late final List<Comment> comments = [
    Comment(
      comment: comment,
      author: author,
      rating: rating,
      avatar: avatar,
    ),
    Comment(
      comment: comment,
      author: author,
      rating: rating,
      avatar: avatar,
    ),
    Comment(
      comment: comment,
      author: author,
      rating: rating,
      avatar: avatar,
    ),
    Comment(
      comment: comment,
      author: author,
      rating: rating,
      avatar: avatar,
    ),
    Comment(
      comment: comment,
      author: author,
      rating: rating,
      avatar: avatar,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.gray,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Container(
                    height: 246.h,
                    child: Stack(
                      children: [
                        Image.asset(
                          CustomImages.food,
                          width: MediaQuery.of(context).size.width,
                          height: 246.h,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 246.h,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(217, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 54.w,
                          top: 246.h / 2 -
                              (CustomTextStyles.h1White.fontSize! +
                                      CustomTextStyles.PlanTitleSub.fontSize!) /
                                  2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ABONNEMENT 1 AN",
                                style: CustomTextStyles.h1White,
                              ),
                              Text(
                                "2 mois offerts",
                                style: CustomTextStyles.PlanTitleSub,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight -
                      246.h -
                      56.h -
                      17.h * 3 -
                      30, // Subtract 30 to account for the margin below the button
                  child: ListView.builder(
                    itemCount: comments.length +
                        1, // Add 1 to the item count to include the "TESTÉE PAR 32 GALÉRIENS" text
                    controller: ScrollController(),
                    itemBuilder: (BuildContext context, int index) {
                      if (index < comments.length) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            width: 313.w, // Set the fixed width of 313.w
                            child: comments[index],
                          ),
                        );
                      } else {
                        // Add the "TESTÉE PAR 32 GALÉRIENS" text as the last element of the list
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Center(
                            child: Text(
                              "TESTÉE PAR 32 GALÉRIENS",
                              style: CustomTextStyles.PlanEmphasis,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                CustomButton(
                  text: "PROFITER DE L'OFFRE",
                  backgroundColor: CustomColors.purple,
                  height: 56.h,
                  width: 313.w,
                  textStyle: CustomTextStyles.PlanButtonText,
                  onPressed:(){},
                ),
                const SizedBox(
                  height: 30, // Add space below the button
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
