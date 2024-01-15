import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Models/Utils/app_images.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';
import 'package:my_portfolio_web/Views/Utils/my_text.dart';

import '../../../Models/Utils/app_colors.dart';
import '../../Utils/Widgets/text_gradient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: 1.sh,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 20.sp:50.sp,vertical: 50.sp),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                        text: 'Shabir',
                style: GoogleFonts.raleway(
                    color: Colors.grey,
                    fontSize: 16.sp

                ),
                        children: [
                          TextSpan(
                            text: ' Khan',
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 16.sp
                            )
                          )
                        ]
                      )),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              hoverColor: AppColors.lightOrange,
                                onTap: (){},
                                child: Container(

                                    padding: EdgeInsets.symmetric(horizontal: 0.01.sw,vertical: 10.sp),
                                    child: const MyText('Home'))),
                            InkWell(
                                hoverColor: AppColors.lightOrange,
                                onTap: (){},
                                child: Container(

                                    padding: EdgeInsets.symmetric(horizontal: 0.01.sw,vertical: 10.sp),
                                    child: const MyText('About'))),
                            InkWell(
                                hoverColor: AppColors.lightOrange,
                                onTap: (){},
                                child: Container(

                                    padding: EdgeInsets.symmetric(horizontal: 0.01.sw,vertical: 10.sp),
                                    child: const MyText('Contact Us')))


                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Positioned(
                  left: 20.sp,
                  right: 20.sp,
                  top: 200.h,
                  child: Center(
                    child: Flex(
                      direction: Responsive.isDesktop(context) ? Axis.horizontal:Axis.vertical,
                      children: [
                        Center(child: Container(
                          width: Responsive.isDesktop(context) ? 0.3.sw:0.7.sw,
                            height: Responsive.isDesktop(context)  ? 0.5.sh:0.35.sh,
                            child: Image.asset(AppImages.profile3))),

                        Center(
                          child: GradientText("Hello I'm Shabir khan",gradient: LinearGradient(colors: AppColors.gradientText),style: GoogleFonts.raleway(
                              fontSize:Responsive.isMobile(context) ? 25.sp: 40.sp
                          ),),
                        ),
                      ],
                    ),
                  ),
                ),


                //  Positioned(
                //    left: 0.3.sw,
                //    bottom: 60.h,
                //   child: TypeWriterText(
                //     repeat: true,
                //     text: Text('I am a Mobile App Developer',style: GoogleFonts.raleway(
                //       fontSize: 25.sp
                //     ),),
                //     duration: const Duration(milliseconds: 150),
                //   ),
                // )

                 Positioned(
                   left: Responsive.isMobile(context) ? 10.sp: 0.3.sw,
                   bottom: 60.h,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'I am a Mobile App Developer',
                        cursor: '',
                        textStyle:  GoogleFonts.raleway(
                          fontSize: Responsive.isMobile(context) ? 16.sp: 20.sp,

                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 150),
                      ),


                    ],

                    // totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    // stopPauseOnTap: true,
                  ),
                ),
                Positioned(
                  bottom: 30.h,
                  right: 30.sp,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const RotatedBox(
                          quarterTurns: 1,

                          child: MyText('Follow me on',),),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.sp),
                        color: Colors.white,
                        height: 50.sp,
                        width: 2.sp,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(5.sp),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,

                          ),
                          child: Icon(FontAwesomeIcons.linkedin,size: 15,),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(5.sp),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,

                          ),
                          child: Icon(FontAwesomeIcons.googlePlus,size: 15,),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),

          CustomFooter()


        ],
      ),
    );
  }
}
