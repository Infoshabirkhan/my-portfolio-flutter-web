import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Models/Utils/responsive.dart';
import '../../../Utils/Widgets/mobile_view_switcher.dart';
import '../custom_image_preview.dart';

class PortfolioCards extends StatelessWidget {
  const PortfolioCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return             Container(
      padding: EdgeInsets.only(
        left: Responsive.padding(width: width),
        right: Responsive.padding(width: width),
      ),
      height: width < Responsive.mobileMaxWith ? 500.sp: 300.sp,
      child: MobileViewSwitcher(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    'Food Delivery Mobile App \n& Admin Panel',
                    style: GoogleFonts.raleway(
                        fontSize:
                        Responsive.extraLargeFont(width: width),
                        color: Colors.orange),
                  ),
                ),
                Expanded(
                  child: Text(
                    'The project is currently under development process. Develop for the client. ',
                    style: GoogleFonts.raleway(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InkWell(
                onTap: () {
                  // ImagePreviewModel.model =  ImagePreviewModel(imageTag: 'hero', image: 'assets/images/food-delivery-black.png');

                  //  Navigator.of(context).pushNamed('/image-preview');

                  showDialog(
                      context: (context),
                      builder: (context) {
                        return CustomImagePreview(
                          image:
                          'assets/images/food-delivery-black.png',
                          imageTag: 'hero',
                        );
                      });

                  // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  //   return CustomImagePreview(image: 'assets/images/food-delivery-black.png', photoTag: 'hero');
                  // }));
                },
                child: Hero(
                    tag: 'hero',
                    child: Image.asset(
                      'assets/images/food-delivery-black.png',
                      fit: BoxFit.cover,
                    ))),
          ),
        ],
      ),
    );
  }
}
