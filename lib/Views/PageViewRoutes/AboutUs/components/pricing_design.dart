import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Models/Utils/responsive.dart';

class PricingDesign extends StatelessWidget {
  const PricingDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        left: Responsive.padding(width: width),
        right: Responsive.pricingPadding(width),
      ),
      height: 400.sp,
      child: Row(
        children: const [
          PricingCards(
            title: 'Basic',
            price: '13',
            appIcon: 0,
            sourceCode: 0,
            splashScreen: 0,
            appSubmission: 0,
          ),
          PricingCards(
            title: 'Premium',
            price: '18',
            appIcon: 1,
            sourceCode: 1,
            splashScreen: 1,
            appSubmission: 0,
          ),
          PricingCards(
            title: 'Pro',
            price: '30',
            appIcon: 1,
            sourceCode: 1,
            splashScreen: 1,
            appSubmission: 1,
          ),
        ],
      ),
    );
  }
}

class PricingCards extends StatelessWidget {
  final String title;
  final String price;
  final int splashScreen;
  final int appIcon;
  final int sourceCode;
  final int appSubmission;

  const PricingCards({
    Key? key,
    required this.title,
    required this.price,
    required this.appIcon,
    required this.sourceCode,
    required this.splashScreen,
    required this.appSubmission,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          right: Responsive.pricingPadding(width),
        ),
        color: Colors.black.withOpacity(0.1),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: 1.sw,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              title,
                              style: GoogleFonts.raleway(fontSize: 16.sp),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '\$$price',
                              style: GoogleFonts.raleway(
                                  fontSize: 25.sp, color: Colors.orange),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Per Hour',
                              style: GoogleFonts.raleway(fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Container(
                        height: 4.sp,
                        color: Colors.orange,
                        width: 1.sw,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: sourceCode == 1
                              ? const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ))
                              : const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                  )),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Source code',
                            style: GoogleFonts.raleway(fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: appIcon == 1
                              ? const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                )
                              : const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                  ),
                                ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'App Icon',
                            style: GoogleFonts.raleway(fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: splashScreen == 1
                              ? const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                )
                              : const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                  ),
                                ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Splash Screen',
                            style: GoogleFonts.raleway(fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: appSubmission == 1
                              ? const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                )
                              : const Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                  ),
                                ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'App Submission',
                            style: GoogleFonts.raleway(fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
