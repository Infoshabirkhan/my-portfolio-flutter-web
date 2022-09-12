import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Controllers/Cubits/nav_control_cubit.dart';
import '../../../PageViewRoutes/page_view_static.dart';

class NavBarItems extends StatelessWidget {
  final String title;
  final int itemIndex;
  final bool? isDrawer;


  const

  NavBarItems({Key? key, required this.title, required this.itemIndex, this.isDrawer = false,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NavControlCubit, int>(
        builder: (context, state) {
          return InkWell(
            hoverColor: Colors.red,

            onTap: () {
              PageViewStatic.pageController.jumpToPage(itemIndex);
              context.read<NavControlCubit>().getIndex(index: itemIndex);
              if(isDrawer! ){

                Navigator.of(context).pop();
              }
              // Navigator.of(context).push(MaterialPageRoute(builder: (context){
              //   return HomeScreen();
              //  }));
            },
            child: Container(
              child: Text(
                title,
                style: GoogleFonts.raleway(

                  color: state == itemIndex ? Colors.orange : Colors.white

                ),
              ),
            ),
          );
        },
      ),
    )
    ;
  }
}
