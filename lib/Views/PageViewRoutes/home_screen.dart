import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_web/Controllers/Cubits/nav_bar_animation_cubit.dart';
import 'package:my_portfolio_web/Controllers/Cubits/nav_control_cubit.dart';
import 'package:my_portfolio_web/Models/Utils/on_scroll_animation.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/AboutUs/about_us.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ContactUsRoutes/contact_us.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ServicesRouts/services_view.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/CustomNavBar/custom_nav_bar.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/page_view_static.dart';
import '../../Models/Utils/remove_glow.dart';
import '../Utils/Widgets/custom_drawer.dart';
import 'PortfolioRoutes/portfolio_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 // ScrollController scrollController = ScrollController();

  bool showContainer = false;

  @override
  void initState() {
    //PageViewStatic.scrollController.jumpTo(0);
    PageViewStatic.scrollController.addListener(() {


      print(PageViewStatic.scrollController.offset);
      if (PageViewStatic.scrollController.offset > 250) {


        /// ============= Services Animation


          OnScrollAnimation.ourGoalAnimation(context, true);


          ///============= animate our goal


        OnScrollAnimation.servicesAnimation(context, true);


        context.read<NavBarAnimationCubit>().showNavBar(status: true);


      } else {



        OnScrollAnimation.ourGoalAnimation(context, false);

        /// ============= Services Animation
        OnScrollAnimation.servicesAnimation(context, false);



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

          ScrollConfiguration(
            behavior: RemoveGlow(),
            child: ListView(

              controller: PageViewStatic.scrollController,
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
          ),

          Positioned(
            left: 0,
            right: 0,
            child: BlocBuilder<NavBarAnimationCubit, bool>(
              builder: (context, state) {
                return Opacity(

                  opacity: state ? 1 : 0,

                  child: AnimatedContainer(
                    color: Colors.transparent,
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
