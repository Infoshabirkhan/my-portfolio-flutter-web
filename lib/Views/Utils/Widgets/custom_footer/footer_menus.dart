import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterMenus extends StatelessWidget {
  const FooterMenus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: 4,
        child: Column(
          children: [
            Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About us',
                    style: GoogleFonts.raleway(),
                  )),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Services',
                    style: GoogleFonts.raleway(),
                  )),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Portfolio',
                    style: GoogleFonts.raleway(),
                  )),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Contact Us',
                    style: GoogleFonts.raleway(


                    ),
                  )),
            ),
          ],
        ));
  }
}
