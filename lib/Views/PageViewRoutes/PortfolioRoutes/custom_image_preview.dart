import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImagePreview extends StatelessWidget {
  final String image;
  final String imageTag;

  const CustomImagePreview(
      {Key? key, required this.image, required this.imageTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 0.6, sigmaX: 0.6),
      child: SizedBox(
        height: 0.6.sh,
        width: 0.8.sw,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 20,
              bottom: 0,
              child: Hero(
                tag: imageTag,
                child: Image.asset(
                  image,
                ),
              ),
            ),
            Positioned(
              right: 20.sp,
              top: 50.sp,
              child: SizedBox(
                width: 50.sp,
                height: 50.sp,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
