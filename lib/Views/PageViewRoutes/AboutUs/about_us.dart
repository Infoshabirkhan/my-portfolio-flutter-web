import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/components/pricing_design.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/components/skills_design.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/components/why_choose_us.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/page_view_static.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/website_title.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:html' as html;

import '../another_footer.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        //height: aboutUsHeight.sp,
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            /// ============= height 400
            Container(
              height: 400.sp,
              padding: EdgeInsets.only(
                left: Responsive.padding(width: width),
                right: Responsive.padding(width: width),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 160.sp,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 3.h),
                              // width: .sp,
                              color: Colors.orange,
                              child: Text(
                                '  Hello, I am  ',
                                style: GoogleFonts.raleway(),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  //     flex: 2,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Shabir khan',
                                      style: GoogleFonts.raleway(
                                        fontSize:
                                            width < Responsive.mobileMaxWith
                                                ? 18.sp
                                                : width > Responsive.destopWidth
                                                    ? 45.sp
                                                    : 35.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'A Professional Flutter Developer',
                                    style: GoogleFonts.raleway(
                                        fontSize: 16.sp,
                                        color: Colors.grey[400]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: Responsive.padding(width: width)),
              child: Text(
                'Welcome to sCoder',
                style: GoogleFonts.raleway(
                  color: Colors.orange,
                  fontSize: 16.sp,
                ),
              ),
            ),

            /// ================== > height is 250
            SkillsDesign(),

            SizedBox(
              height: 100.sp,
            ),

            Padding(
              padding: EdgeInsets.only(
                left: Responsive.padding(width: width),
              ),
              child: Text(
                'Why Choose us',
                style: GoogleFonts.raleway(
                  color: Colors.orange,
                  fontSize: 16.sp,
                ),
              ),
            ),

            /// =============== height
            /// desktop height == 300.sp
            /// tablet/mobile height == 500.sp
            const WhyChooseUs(),

            SizedBox(
              height: 100.sp,
            ),

            Container(
              height: 150.sp,
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Pricing Plan',
                        style: GoogleFonts.raleway(
                            color: Colors.orange, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Our Pricing Plan',
                        style: GoogleFonts.raleway(
                            color: Colors.white, fontSize: 24.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// ================ height 400
            const PricingDesign(),
            SizedBox(
              height: width < Responsive.tabletMinWidth ? 250.sp : 450.sp,
            ),

            /// 400 300 350 300
            /// ==================== height 300

            CustomFooter(),
          ],
        ),
      ),
    );
  }
}
