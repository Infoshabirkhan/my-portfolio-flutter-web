import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ContactUsRoutes/components/contact_description.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/ContactUsRoutes/components/contact_us_fom.dart';

import '../../../../Models/Utils/responsive.dart';

class ContactDesign extends StatelessWidget {
  const ContactDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          left: Responsive.padding(width: width),
          right: Responsive.padding(width: width)),
      height: width < Responsive.tabletMinWidth ? 600.sp:300.sp,
      child: width < Responsive.tabletMinWidth ?

      Column(
        children: const [
          ContactDescription(),
          ContactUsForm()
        ],
      )

          :Row(
        children: const [
ContactDescription(),
          ContactUsForm()
        ],
      ),
    );
  }
}
