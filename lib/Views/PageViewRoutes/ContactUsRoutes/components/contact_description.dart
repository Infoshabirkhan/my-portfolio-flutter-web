import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Models/Utils/responsive.dart';

class ContactDescription extends StatelessWidget {
  const ContactDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return           Expanded(
      child: RichText(
        text: TextSpan(
            text: 'We are ',
            style: GoogleFonts.raleway(
                fontSize: Responsive.extraLargeFont(width: width),
                color: Colors.white),
            children: [
              TextSpan(
                text: 'Perfect Solution\n',
                style: GoogleFonts.raleway(
                    color: Colors.orange,
                    fontSize: Responsive.extraLargeFont(width: width)),
              ),
              TextSpan(
                text: 'For ',
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: Responsive.extraLargeFont(width: width)),
              ),
              TextSpan(
                text: 'Your Business',
                style: GoogleFonts.raleway(
                    color: Colors.orange,
                    fontSize: Responsive.extraLargeFont(width: width)),
              ),
            ]),
      ),
    );
  }
}
