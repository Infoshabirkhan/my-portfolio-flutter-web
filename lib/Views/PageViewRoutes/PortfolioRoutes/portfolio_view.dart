import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/PortfolioRoutes/components/my_video_player.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';

import '../../../Models/Utils/responsive.dart';
import 'components/portfolio_cards.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            /// =================== height 450.sp
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
                    child: RichText(
                      text: TextSpan(
                        text: 'My',
                        style: GoogleFonts.raleway(
                          fontSize: Responsive.extraLargeFont(width: width),
                          color: Colors.orange,
                        ),
                        children: [
                          TextSpan(
                            text: ' Work',
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: Responsive.extraLargeFont(width: width),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// height 300.sp
            const MyVideoPlayer(),

            SizedBox(
              height: 50.sp,
            ),

            /// ================== height is   300

            const PortfolioCards(
              projectTitle: 'Food Delivery Mobile App & Admin Panel',
              description: 'The project is currently under development '
                  'process. Develop for the client. ',
              imageName: 'food-delivery-black.png',
            ),

            SizedBox(
              height: 50.sp,
            ),
            const PortfolioCards(
              projectTitle: 'Pharmacy Shop App',
              description: 'Basically this app shows Inventory items,'
                  ' daily sale, Add new items etc',
              imageName: 'pharmacy_shop.png',
            ),

            SizedBox(
              height: 50.sp,
            ),
            const PortfolioCards(
              projectTitle: 'Qurtuba School Mobile App',
              description: 'Develop Student portal mobile app for the student '
                  'of Qurtuba School and Colleges. ',
              imageName: 'qurtuba_project.png',
            ),

            SizedBox(
              height: 150.sp,
            ),

            /// ================== height 300

            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}
