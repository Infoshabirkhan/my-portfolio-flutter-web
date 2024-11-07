import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Models/Utils/app_images.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';

import '../../../Models/Utils/app_colors.dart';
import '../../Utils/Widgets/CustomNavBar/custom_nav_bar.dart';
import '../../Utils/Widgets/follow_on_socail_media.dart';
import '../../Utils/Widgets/text_gradient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090909),
      body: ListView(
        children: [
          SizedBox(
            height: 1.sh,
            child: Stack(
              children: [

                Positioned(

                    right: -90.sp,
                    bottom: 0,
                    child: SvgPicture.asset(AppImages.pattern,width: 0.5.sw,color: Colors.white.withOpacity(0.8),)),
                //pattern
                // Positioned(child: SvgPicture.as)
                // Positioned(
                //     top: 0,
                //     left: 0,
                //     right: 0,
                //     bottom: 0,
                //     child: Image.asset(
                //       AppImages.technology,
                //       color: Colors.black.withOpacity(0.75),
                //       colorBlendMode: BlendMode.darken,
                //       fit: BoxFit.cover,
                //     )),
                const CustomNavBar(),
                Positioned(
                  left: 20.sp,
                  right: 20.sp,
                  top: 100.h,
                  child: Center(
                    child: Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      children: [
                        Center(
                            child: SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 0.35.sw
                                    : 0.7.sw,
                                height: Responsive.isDesktop(context)
                                    ? 0.8.sh
                                    : 0.7.sh,
                                child: Image.asset(AppImages.profile3,fit: BoxFit.cover
                                  , ))),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            GradientText(
                              "Hello",
                              gradient:
                              LinearGradient(colors: AppColors.gradientText),
                              style: GoogleFonts.raleway(
                                  fontSize: Responsive.isMobile(context)
                                      ? 25.sp
                                      : 60.sp),
                            ),

                            // SizedBox(height: 20.sp,),
                            GradientText(
                              "I'm Shabir khan",
                              gradient:
                              LinearGradient(colors: AppColors.gradientText),
                              style: GoogleFonts.raleway(
                                  fontSize: Responsive.isMobile(context)
                                      ? 25.sp
                                      : 30.sp),
                            ),
                            SizedBox(height: 40.h,),

                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'I am a Mobile App Developer',
                                  // cursor: '',
                                  textStyle: GoogleFonts.raleway(
                                    fontSize:
                                    Responsive.isMobile(context) ? 16.sp : 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 20),
                                ),
                              ],

                              // totalRepeatCount: 4,
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              // stopPauseOnTap: true,
                            ),
                          ],
                        ),
                        // Align(
                        //   alignment: Alignment.topCenter,
                        //   child: GradientText(
                        //     "Hello I'm Shabir khan",
                        //     gradient:
                        //         LinearGradient(colors: AppColors.gradientText),
                        //     style: GoogleFonts.raleway(
                        //         fontSize: Responsive.isMobile(context)
                        //             ? 25.sp
                        //             : 60.sp),
                        //   ),
                        // ),

                      ],
                    ),
                  ),
                ),
                // Positioned(
                //   left: Responsive.isMobile(context) ? 10.sp : 0.3.sw,
                //   bottom: 60.h,
                //   child: AnimatedTextKit(
                //     animatedTexts: [
                //       TypewriterAnimatedText(
                //         'I am a Mobile App Developer',
                //         // cursor: '',
                //         textStyle: GoogleFonts.raleway(
                //           fontSize:
                //               Responsive.isMobile(context) ? 16.sp : 20.sp,
                //           fontWeight: FontWeight.bold,
                //         ),
                //         speed: const Duration(milliseconds: 150),
                //       ),
                //     ],
                //
                //     // totalRepeatCount: 4,
                //     pause: const Duration(milliseconds: 1000),
                //     displayFullTextOnTap: true,
                //     // stopPauseOnTap: true,
                //   ),
                // ),
                const FollowOnSocialMediaButtons(),
              ],
            ),
          ),
          const CustomFooter()
        ],
      ),
    );
  }
}
