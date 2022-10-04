import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Controllers/Cubits/nav_bar_animation_cubit.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ContactUsRoutes/components/contact_design.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/CustomNavBar/custom_nav_bar.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';

import '../../../Controllers/Cubits/submit_message_cubit.dart';
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
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return SizedBox(
      child: BlocProvider(
        create: (context) => SubmitMessageCubit(),
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

            Container(

              child: BlocBuilder<SubmitMessageCubit, SubmitMessageState>(
                builder: (context, state) {
                  if (state is SubmitMessageLoaded) {
                    return Container(

                      margin: EdgeInsets.only(
                        bottom: 20.sp,
                        left: Responsive.padding(width: width),
                        right: Responsive.padding(width: width),),
                      height: 50.sp,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Container(
                            height: 40.sp,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green
                            ),
                            child: const Center(
                                child: Icon(Icons.check, color: Colors.white,)),
                          ),),
                          Expanded(

                              flex: 6,
                              child: Stack(
                                children: [
                                  Positioned(

                                    left: 0,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      height: 50.sp,
                                      child: Text('Thanks for your Feedback',
                                        style: GoogleFonts.dancingScript(
                                          wordSpacing: 1.2,

                                            fontSize: 16.sp
                                        ),),
                                    ),
                                  ),

                                  Positioned(
                                    top: 0,
                                    bottom: 0,
                                    right: 10.sp,

                                    child: InkWell(
                                        onTap: () {
                                          context.read<SubmitMessageCubit>()
                                              .disposeMessage();
                                        },
                                        child: Container(
                                            width: 50.sp,
                                            height: 40.sp,

                                            child: const Icon(Icons.clear,
                                              color: Colors.red,))),),
                                ],
                              )
                          ),
                        ],
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),

            const ContactDesign(),


            BlocBuilder<SubmitMessageCubit, SubmitMessageState>(
              builder: (context, state) {
                if(state is SubmitMessageLoaded){
                  return SizedBox(
                    height: width < Responsive.tabletMinWidth ? 70.sp : 320.sp,);

                }else {
                  return SizedBox(
                    height: width < Responsive.tabletMinWidth ? 130.sp : 380.sp,);

                }
                    },
            ),

            CustomFooter()
          ],
        ),
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
