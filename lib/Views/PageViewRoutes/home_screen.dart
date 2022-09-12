import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_web/Controllers/Cubits/nav_bar_animation_cubit.dart';
import 'package:my_portfolio_web/Controllers/Cubits/nav_control_cubit.dart';
import 'package:my_portfolio_web/Controllers/Cubits/services_provide_cubit.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/about_us.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ContactUsRoutes/contact_us.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ServicesRouts/services_view.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/CustomNavBar/custom_nav_bar.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/page_view_static.dart';

import '../Utils/Widgets/custom_drawer.dart';
import 'PortfolioRoutes/portfolio_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();

  bool showContainer = false;

  @override
  void initState() {
    scrollController.addListener(() {

      print(scrollController.offset);
      if (scrollController.offset > 250) {

        if(context.read<NavControlCubit>().state == 1){


          context.read<ServicesProvideCubit>().showServices(status: true );

        }

          context.read<NavBarAnimationCubit>().showNavBar(status: true);

      } else {

        if(context.read<NavControlCubit>().state == 1){
          context.read<ServicesProvideCubit>().showServices(status: false);

        }
          context.read<NavBarAnimationCubit>().showNavBar(status: false);

      }
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      endDrawer: const CustomDrawer(),
      body: Stack(

        children: [

          ListView(

            controller: scrollController,
            children: [
              const CustomNavBar(),

              BlocBuilder<NavControlCubit, int>(
                builder: (context, state) {
                  return SizedBox(
                    height: PageViewStatic.getHeight(state: state).sp,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: PageViewStatic.pageController,
                      children: const [
                        AboutUsView(),
                        ServicesView(),
                        PortfolioView(),
                        ContactUsView(),
                      ],
                    ),
                  );
                },
              ),

            ],
          ),

          Positioned(
            left: 0,
            right: 0,
            child: BlocBuilder<NavBarAnimationCubit, bool>(
              builder: (context, state) {
                return Opacity(

                  opacity: state ? 1 : 0,

                  child: AnimatedContainer(
                    color: Colors.black,
                    duration: const Duration(milliseconds: 300),
                    height: state ? 100 : 0,
                    child: const CustomNavBar(),

                  ),
                );
              },
            ),

          ),
        ],
      ),
    );
  }
}
