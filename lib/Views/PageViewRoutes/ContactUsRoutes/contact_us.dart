import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Controllers/Cubits/nav_bar_animation_cubit.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ContactUsRoutes/components/contact_design.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/CustomNavBar/custom_nav_bar.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';

import '../../../Models/Utils/responsive.dart';
import '../page_view_static.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  ScrollController scrollController = ScrollController();

  bool showContainer = false;

  @override
  void initState() {
    scrollController.addListener(() {
      print('offset =========> ${scrollController.offset}');

      if (scrollController.offset > 250) {
        setState(() {
          context.read<NavBarAnimationCubit>().showNavBar(status: true);
        });
      } else {
        setState(() {
          context.read<NavBarAnimationCubit>().showNavBar(status: false);
        });
      }
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 450.sp,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    'assets/images/contactus.jpg',
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Center(
                  child: Text('Contact',
                      style: GoogleFonts.raleway(
                          fontSize: Responsive.extraLargeFont(width: width),
                          color: Colors.orange)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          const ContactDesign(),


          SizedBox(height: width < Responsive.tabletMinWidth ?130.sp :430.sp ,),

          CustomFooter()
        ],
      ),
    );
    // return Scaffold(
    //
    //   endDrawer: Drawer(),
    //   body: Stack(
    //
    //     children: [
    //
    //       ListView(
    //         controller: scrollController,
    //         children: [
    //           CustomNavBar(),
    //           Container(height: 400,
    //             color: Colors.blue,),
    //
    //           SizedBox(height: 800,),
    //         ],
    //       ),
    //
    //       Positioned(
    //         left: 0,
    //         right: 0,
    //         child: BlocBuilder<NavBarAnimationCubit, bool>(
    //           builder: (context, state) {
    //             return Opacity(
    //
    //               opacity: state ? 1: 0,
    //
    //               child: AnimatedContainer(
    //                 color: Colors.black,
    //                 duration: const Duration(milliseconds: 300),
    //                 height: state ? 100 : 0,
    //                 child: const CustomNavBar(),
    //
    //               ),
    //             );
    //           },
    //         ),
    //
    //       ),
    //     ],
    //   ),
    // );
  }
}
