import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Models/Utils/image_preview_model.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/PortfolioRoutes/custom_image_preview.dart';
import 'package:my_portfolio_web/Views/Utils/Widgets/custom_footer/custom_footer.dart';
import 'package:video_player/video_player.dart';

import '../../../Models/Utils/responsive.dart';
import 'components/portfolio_cards.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/videos/VID_20220914155438.mp4')
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {
              _controller!.play();
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 450.sp,
              child: Stack(
                children: [
                  SizedBox(
                    width: 1.sw,
                    height: 1.sw,
                    child: Image.asset(
                      'assets/images/portfolio.jpg',
                      colorBlendMode: BlendMode.darken,
                      color: Colors.black.withOpacity(0.7),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'My',
                        style: GoogleFonts.raleway(
                          fontSize: Responsive.extraLargeFont(width: width),
                          color: Colors.orange,
                        ),
                        children: [
                          TextSpan(
                              text: ' Work',
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize:
                                      Responsive.extraLargeFont(width: width))),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: 1.sw,
              height: 300.h,
              child: _controller != null
                  ? _controller!.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller!.value.aspectRatio,
                          child: VideoPlayer(_controller!))
                      : const Center(
                          child: Text('loading'),
                        )
                  : Center(
                      child: Text('no found'),
                    ),
            ),

            // Container(
            //   height: 300.sp,
            //
            //
            //   child: _controller!.value.isInitialized
            //       ? AspectRatio(
            //     aspectRatio: _controller!.value.aspectRatio,
            //     child: VideoPlayer(_controller!),
            //   )
            //       : Container(),
            // ),
            // Container(
            //   padding: EdgeInsets.only(
            //     left: Responsive.padding(width: width),
            //     right: Responsive.padding(width: width),
            //   ),
            //   height: 300.sp,
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Column(
            //           children: [
            //             Expanded(
            //               child: Text(
            //                 'Food Delivery Mobile App \n& Admin Panel',
            //                 style: GoogleFonts.raleway(
            //                     fontSize:
            //                         Responsive.extraLargeFont(width: width),
            //                     color: Colors.orange),
            //               ),
            //             ),
            //             Expanded(
            //               child: Text(
            //                 'The project is currently under development process. Develop for the client. ',
            //                 style: GoogleFonts.raleway(),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: InkWell(
            //             onTap: () {
            //               // ImagePreviewModel.model =  ImagePreviewModel(imageTag: 'hero', image: 'assets/images/food-delivery-black.png');
            //
            //               //  Navigator.of(context).pushNamed('/image-preview');
            //
            //               showDialog(
            //                   context: (context),
            //                   builder: (context) {
            //                     return CustomImagePreview(
            //                       image:
            //                           'assets/images/food-delivery-black.png',
            //                       imageTag: 'hero',
            //                     );
            //                   });
            //
            //               // Navigator.of(context).push(MaterialPageRoute(builder: (context){
            //               //   return CustomImagePreview(image: 'assets/images/food-delivery-black.png', photoTag: 'hero');
            //               // }));
            //             },
            //             child: Hero(
            //                 tag: 'hero',
            //                 child: Image.asset(
            //                   'assets/images/food-delivery-black.png',
            //                   fit: BoxFit.cover,
            //                 ))),
            //       ),
            //     ],
            //   ),
            // ),


            /// ================== height is mobile  500
            /// ================== otherwise 300
            const PortfolioCards(),

            
            SizedBox(
              height: width < Responsive.mobileMaxWith ? 150.sp:350.sp,
            ),

            /// ================== height 300

            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}
