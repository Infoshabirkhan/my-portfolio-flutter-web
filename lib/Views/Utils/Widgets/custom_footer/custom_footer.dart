import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/contact_items.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/footer_menus.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/socail_media_buttons.dart';

import 'dart:html' as html;
import '../../../../Models/Utils/responsive.dart';
import '../website_title.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 300.sp,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(
                left: Responsive.padding(width: width),
                right: Responsive.padding(width: width),
              ),
              color: Colors.black,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: WebsiteTitle()),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'IT Solution',
                                    style: GoogleFonts.raleway(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Visibility(

                            visible: width < Responsive.mobileMaxWith ? true : false,
                            child: FooterMenus())
                      ],
                    ),
                  ),
                  Visibility(
                    visible: width < Responsive.mobileMaxWith ? false  : true,
                    child: Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(),
                        child: Column(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Menus',
                                  style: GoogleFonts.raleway(
                                      fontSize: 18.sp, color: Colors.orange),
                                ),
                              ),
                            ),
                           FooterMenus(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Contact Info',
                              style: GoogleFonts.raleway(fontSize: 18.sp, color: Colors.orange,),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: const [
                              ContactItems(
                                icon: FaIcon(
                                  FontAwesomeIcons.locationDot,
                                  color: Colors.orange,
                                ),
                                label: 'Peshawar, Pakistan',
                              ),
                              ContactItems(
                                icon: FaIcon(
                                  FontAwesomeIcons.clock,
                                  color: Colors.orange,
                                ),
                                label: '10:00 - 1700',
                              ),
                              ContactItems(
                                icon: FaIcon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.orange,
                                ),
                                label: '+92310-9688770',
                              ),
                              ContactItems(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.orange,
                                ),
                                label: 'infoshabbirkhan@gmail.com',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 2.sp,
            color: Colors.white,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: Responsive.padding(width: width),
                right: Responsive.padding(width: width),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: const [
                        SocailMediaButtons(
                          icon: FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blue,
                          ),
                          link: 'https://www.facebook.com/shabbir.ahmad55/',
                        ),
                        SocailMediaButtons(
                          icon: FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.black,
                          ),
                          link: 'https://github.com/Infoshabirkhan',
                        ),
                        SocailMediaButtons(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                          ),
                          link: 'https://www.linkedin.com/in/shabir-khan-87984222b/',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: width < Responsive.mobileMaxWith ? 1 : 2,
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\u00a9 Copy Right 2022, All Right reserved',
                          style: GoogleFonts.raleway(
                            fontSize: width < Responsive.mobileMaxWith ? 8.sp:14.sp
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
