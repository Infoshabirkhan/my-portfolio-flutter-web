import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/components/features.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/components/our_goal_design.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        left: Responsive.padding(width: width),
        right: Responsive.padding(width: width),
      ),
      height: width < Responsive.tabletMinWidth ? 500.sp :300.sp,
      color: Colors.black.withOpacity(0.1),
      child: width < Responsive.tabletMinWidth ?

      Column(
        children:  [


          OurGoalDesign(),

          Expanded(
            child: Row(
              children: const [
                Features(title: 'Responsive Design', image: 'adobe-responsive.png'),
                Features(title: 'Performance', image: 'cpu.png'),
              ],
            ),
          ),
        ],
      )

          :Row(
        children:  [


          OurGoalDesign(),

          Expanded(
            child: Row(
              children: const [
                Features(title: 'Responsive Design', image: 'adobe-responsive.png'),
                Features(title: 'Performance', image: 'cpu.png'),
              ],
            ),
          ),
       ],
      ),
    );
  }
}
