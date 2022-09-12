import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/CustomNavBar/nav_bar_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.only(left: 20.sp),
        children: [
          SizedBox(
            height: 50.h,
          ),
          const NavBarItems(
            isDrawer: true,
            title: 'About Us',
            itemIndex: 0,
          ),
          SizedBox(height: 10.sp,),
          const NavBarItems(
            isDrawer: true,

            title: 'Services',
            itemIndex: 1,
          ),
          SizedBox(height: 10.sp,),

          const NavBarItems(
            isDrawer: true,

            title: 'Portfolio',
            itemIndex: 2,
          ),
          SizedBox(height: 10.sp,),

          const NavBarItems(
            isDrawer: true,

            title: 'Contact Us',
            itemIndex: 3,
          ),
          SizedBox(height: 10.sp,),

        ],
      ),
    );
  }
}
