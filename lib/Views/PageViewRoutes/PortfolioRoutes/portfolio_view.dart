import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/page_view_static.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';

import '../../../Models/Utils/responsive.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(

      child: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [


          SizedBox(
              height: 450.sp,
              child: Stack(
                children: [
                  SizedBox(
                    width: 1.sw,
                    height: 1.sw,

                    child: Image.asset(
                      'assets/images/portfolio.jpg',
                      colorBlendMode: BlendMode.darken,
                      color: Colors.black.withOpacity(0.7),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: RichText(text: TextSpan(
                        text: 'My',
                        style: GoogleFonts.raleway(

                            fontSize: Responsive.extraLargeFont(width: width),
                            color: Colors.orange
                        ),
                        children: [

                          TextSpan(text: ' Work', style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: Responsive.extraLargeFont(width: width)
                          )),
                        ]
                    ),),
                  )
                ],
              )
          ),



          SizedBox(height: 750.sp,),
          /// ================== height 300

          CustomFooter(),

        ],
      ),

      ),
    );
  }
}
