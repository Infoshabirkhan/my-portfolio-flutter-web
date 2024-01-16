import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Models/Utils/app_colors.dart';
import '../../../../Models/Utils/responsive.dart';
import '../../my_text.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 20.sp : 50.sp,
          vertical: 50.sp),
      child: Row(
        children: [
          RichText(
              text: TextSpan(
                  text: 'Shabir',
                  style: GoogleFonts.raleway(
                      color: Colors.grey, fontSize: 16.sp),
                  children: [
                    TextSpan(
                        text: ' Khan',
                        style: GoogleFonts.raleway(
                            color: Colors.white, fontSize: 16.sp))
                  ])),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    hoverColor: AppColors.lightOrange,
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.01.sw, vertical: 10.sp),
                        child: const MyText('Home'))),
                InkWell(
                    hoverColor: AppColors.lightOrange,
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.01.sw, vertical: 10.sp),
                        child: const MyText('About'))),
                InkWell(
                    hoverColor: AppColors.lightOrange,
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.01.sw, vertical: 10.sp),
                        child: const MyText('Contact Us')))
              ],
            ),
          )
        ],
      ),
    );
  }
}
