import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Controllers/Cubits/our_services_animation_cubit.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/components/features.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<OurServicesAnimationCubit, bool>(
      builder: (context, state) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 2000),
          opacity: state ? 1 : 0,
          child: Align(
            alignment: Alignment.center,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.only(
                left: Responsive.padding(width: width),
                right: Responsive.padding(width: width),
              ),
              height: state == false
                  ? 100.sp
                  : width < Responsive.tabletMinWidth
                      ? 500.sp
                      : 300.sp,
              color: Colors.black.withOpacity(0.1),
              child: Flex(
                direction: width < Responsive.tabletMinWidth
                    ? Axis.vertical
                    : Axis.horizontal,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(
                                text: 'Our Goal is\n',
                                style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize:
                                      Responsive.extraLargeFont(width: width),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Giving the Best\n',
                                    style: GoogleFonts.raleway(
                                      color: Colors.orange,
                                      fontSize: Responsive.extraLargeFont(
                                          width: width,),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'For ',
                                    style: GoogleFonts.raleway(
                                      color: Colors.white,
                                      fontSize: Responsive.extraLargeFont(
                                          width: width),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'IT Services',
                                    style: GoogleFonts.raleway(
                                      color: Colors.orange,
                                      fontSize: Responsive.extraLargeFont(
                                          width: width),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'We Provide the best service our\n'
                              'Top most priority is client satisfaction',
                              style: GoogleFonts.raleway(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: const [
                        Features(
                          title: 'Responsive Design',
                          image: 'adobe-responsive.png',
                        ),
                        Features(
                          title: 'Performance',
                          image: 'cpu.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
