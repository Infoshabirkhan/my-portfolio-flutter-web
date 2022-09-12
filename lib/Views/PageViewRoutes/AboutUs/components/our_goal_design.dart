import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Models/Utils/responsive.dart';

class OurGoalDesign extends StatelessWidget {
  const OurGoalDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                    text: 'Our Goal is\n',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: Responsive.extraLargeFont(width: width),
                    ),
                    children: [
                      TextSpan(
                        text: 'Giving the Best\n',
                        style: GoogleFonts.raleway(
                          color: Colors.orange,
                          fontSize:
                          Responsive.extraLargeFont(width: width),
                        ),
                      ),
                      TextSpan(
                        text: 'For ',
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize:
                          Responsive.extraLargeFont(width: width),
                        ),
                      ),
                      TextSpan(
                        text: 'IT Services',
                        style: GoogleFonts.raleway(
                          color: Colors.orange,
                          fontSize:
                          Responsive.extraLargeFont(width: width),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'We Provide the best service our\nTop most priority is client satisfaction',
                style: GoogleFonts.raleway(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
