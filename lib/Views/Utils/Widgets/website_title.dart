import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WebsiteTitle extends StatelessWidget {
  const WebsiteTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'S',
          style: GoogleFonts.smooch(color: Colors.red, fontSize: 25.sp,fontWeight: FontWeight.w500, ),
          children: [
            TextSpan(
                text: 'Coder',
                style: GoogleFonts.dancingScript(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                )
            )
          ]
      ),
    );
  }
}
