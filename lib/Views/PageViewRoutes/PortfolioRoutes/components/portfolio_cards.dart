import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Models/Utils/responsive.dart';
import '../custom_image_preview.dart';

class PortfolioCards extends StatelessWidget {
  final String projectTitle, description, imageName;

  const PortfolioCards({
    Key? key,
    required this.description,
    required this.imageName,
    required this.projectTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        left: Responsive.padding(width: width),
        right: Responsive.padding(width: width),
      ),
     // height: width < Responsive.tabletMinWidth ? 500.sp : 300.sp,
       height: 350.sp,
      child: Flex(
        direction:
            width < Responsive.tabletMinWidth ? Axis.vertical : Axis.horizontal,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: width < Responsive.tabletMinWidth ? 2 : 1,
                  child: Text(
                    projectTitle,
                    style: GoogleFonts.raleway(
                      fontSize: width < Responsive.mobileMaxWith
                          ? 18.sp
                          : width < Responsive.tabletMinWidth
                              ? 25.sp
                              : 40.sp,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    description,
                    style: GoogleFonts.raleway(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: width < Responsive.tabletMinWidth ? 2:1,
            child: InkWell(
              onTap: () {
                // ImagePreviewModel.model =  ImagePreviewModel(imageTag: 'hero', image: 'assets/images/food-delivery-black.png');

                //  Navigator.of(context).pushNamed('/image-preview');

                showDialog(
                    context: (context),
                    builder: (context) {
                      return CustomImagePreview(
                        image: 'assets/images/$imageName',
                        imageTag: imageName,
                      );
                    });

                // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                //   return CustomImagePreview(image: 'assets/images/food-delivery-black.png', photoTag: 'hero');
                // }));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 10,
                    )
                  ],
                ),
                width: 1.sw,
                height: 1.sw,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.sp),
                  child: Hero(
                    tag: imageName,
                    child: Image.asset(
                      'assets/images/$imageName',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
