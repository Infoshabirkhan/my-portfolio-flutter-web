import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../Models/Utils/responsive.dart';

class SkillsDesign extends StatelessWidget {
  const SkillsDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black.withOpacity(0.1),
      height: 250.sp,
      child: Padding(
        padding: EdgeInsets.only(
          left: Responsive.padding(width: width),
          right: Responsive.padding(width: width),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Let be your\n',
                        style: GoogleFonts.raleway(
                          fontSize: Responsive.extraLargeFont(width: width),
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: 'Software Developer',
                            style: GoogleFonts.raleway(
                              fontSize: Responsive.extraLargeFont(width: width),
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Flutter',
                                        style: GoogleFonts.raleway(),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '80%',
                                        style: GoogleFonts.raleway(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: LinearPercentIndicator(
                                    animationDuration: 3000,
                                    animation: true,
                                    width: 300.sp,
                                    lineHeight: 5.0,
                                    percent: 0.8,
                                    backgroundColor: Colors.black,
                                    progressColor: Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'On time Delivery',
                                        style: GoogleFonts.raleway(),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '99%',
                                        style: GoogleFonts.raleway(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: LinearPercentIndicator(
                                    animationDuration: 3000,
                                    animation: true,
                                    width: 300.sp,
                                    lineHeight: 5.0,
                                    percent: 0.99,
                                    backgroundColor: Colors.black,
                                    progressColor: Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Visibility(
              visible: width < Responsive.tabletMinWidth ? false : true,
              child: const Spacer(),
            )
          ],
        ),
      ),
    );
  }
}
