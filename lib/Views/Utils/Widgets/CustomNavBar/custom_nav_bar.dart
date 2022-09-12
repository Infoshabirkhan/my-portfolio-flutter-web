import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_portfolio_web/Views/Utils/Widgets/CustomNavBar/nav_bar_items.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/website_title.dart';

import '../../../../Models/Utils/responsive.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    print(width);
    return Container(
      padding: EdgeInsets.only(
        left: Responsive.padding(width: width),
        right: Responsive.padding(width: width),
      ),
      height: 100,
      color: Colors.black,


      child: Row(
            children: [
              const Expanded(
                child: WebsiteTitle(),
              ),
              Expanded(
                child: width < Responsive.tabletMinWidth
                    ? Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                )
                    : Row(
                      children: const [
                        Expanded(child: NavBarItems(title: 'About Us', itemIndex: 0,)),
                        
                        Expanded(child: NavBarItems(title: 'Services', itemIndex: 1,)),
                        
                        Expanded(child: NavBarItems(title: 'Portfolio', itemIndex: 2,)),
                        
                        Expanded(child: NavBarItems(title: 'Contact us', itemIndex: 3,)),

                      ],
                    ),
              ),
            ],
          )

    );
  }
}
