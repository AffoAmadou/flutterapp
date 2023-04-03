import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/assets/colors/colors.dart';
import 'package:flutterapp/ui/typography.dart';

class Comment extends StatelessWidget {
  final String comment;
  final String author;
  final int rating;
  final Image avatar;

  Comment(
      {required this.comment,
      required this.author,
      required this.rating,
      required this.avatar});

  @override
  Widget build(BuildContext context) {
    // auto adjust the size of the container to the screen size based on the comment length

    return Container(
      width: 313.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Container(
            width: 313.w,
            height: 50.h,
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    avatar,
                    SizedBox(
                      width: 11.w,
                    ),
                    Container(
                      child: Column(
                        // put children at the start
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Proposé par',
                            style: CustomTextStyles.commentProposition,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            author,
                            style: CustomTextStyles.commentAuthor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    for (int i = 0; i < rating; i++)
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                    for (int i = 0; i < 5 - rating; i++)
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 20.sp,
                      ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 350.w,
            height: 150.h,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                comment,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
