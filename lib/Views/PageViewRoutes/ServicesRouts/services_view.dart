import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Controllers/Cubits/services_provide_cubit.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ServicesRouts/components/services_card.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  bool showTiles = false;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.offset > 100) {
        setState(() {
          showTiles = true;
        });
      } else {
        showTiles = false;
      }
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 450..sp,
            child: Stack(
              children: [
                SizedBox(
                  width: 1.sw,
                  height: 1.sw,
                  child: Image.asset(
                    'assets/images/technology.jpg',
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.7),
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Service',
                      style: GoogleFonts.raleway(
                        fontSize: Responsive.extraLargeFont(width: width),
                        color: Colors.orange,
                      ),
                      children: [
                        TextSpan(
                          text: 's',
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

          SizedBox(
            height: 20.sp,
          ),
          Container(
            height: 120.sp,
            padding: EdgeInsets.only(
              left: Responsive.padding(width: width),
            ),
            child: RichText(
              text: TextSpan(
                text: 'Our ',
                style: GoogleFonts.raleway(
                  fontSize: Responsive.extraLargeFont(width: width),
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: 'Solutions ',
                    style: GoogleFonts.raleway(
                      color: Colors.orange,
                      fontSize: Responsive.extraLargeFont(width: width),
                    ),
                  ),
                  TextSpan(
                    text: '&\n',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: Responsive.extraLargeFont(width: width),
                    ),
                  ),
                  TextSpan(
                    text: 'Focus Area',
                    style: GoogleFonts.raleway(
                      color: Colors.orange,
                      fontSize: Responsive.extraLargeFont(width: width),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          SizedBox(
            height: 500.sp,
            child: BlocBuilder<ServicesProvideCubit, bool>(
              builder: (context, state) {
                return Stack(
                  children: [
                    ServicesCard(
                      state: state,
                      title: 'Android Development',
                      cardIndex: 0,
                    ),
                    ServicesCard(
                      state: state,
                      title: 'IOS Development',
                      cardIndex: 1,
                    ),
                    ServicesCard(
                      state: state,
                      title: 'Web Development',
                      cardIndex: 2,
                    ),
                    ServicesCard(
                      state: state,
                      title: 'Flutter Development',
                      cardIndex: 3,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 90.sp,
          ),
          const CustomFooter(),
        ],
      ),
    );
  }

}
