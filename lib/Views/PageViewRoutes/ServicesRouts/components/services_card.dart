import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';

class ServicesCard extends StatelessWidget {
  final bool state;
  final String title;
  final int cardIndex;

  const ServicesCard({
    Key? key,
    required this.state,
    required this.title,
    required this.cardIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AnimatedPositioned(

      duration: Duration(milliseconds: getDuration(cardIndex)),
      top: 55.sp * cardIndex,
      left: state == true ? Responsive.padding(width: width) : -400.sp,
      child: Container(

        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.sp),
            bottomRight: Radius.circular(15.sp),
          ),
        ),
        width: 300.sp,
        height: 50.h,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            ' > $title',
            style: GoogleFonts.raleway(
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }

  int getDuration( int cardIndex){

    if(cardIndex == 0){
      return 150;

    }else if(cardIndex == 1){
      return 200;
    }else if(cardIndex == 2){
      return 250;

    }else if(cardIndex == 3){
      return 300;
    }else {
      return 350;
    }
  }




}
