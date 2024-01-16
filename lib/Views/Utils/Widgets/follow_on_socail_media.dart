import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_web/Models/Utils/spacing.dart';

import '../my_text.dart';

class FollowOnSocialMediaButtons extends StatelessWidget {
  const FollowOnSocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30.h,
      right: 30.sp,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const RotatedBox(
            quarterTurns: 1,
            child: MyText(
              'Follow me on',
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.sp),
            color: Colors.white,
            height: 50.sp,
            width: 2.sp,
          ),
          10.ph,

          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(5.sp),
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                FontAwesomeIcons.linkedin,
                size: 15,
              ),
            ),
          ),
          10.ph,
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(5.sp),
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                FontAwesomeIcons.googlePlus,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
