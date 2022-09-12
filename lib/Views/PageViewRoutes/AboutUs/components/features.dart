import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatelessWidget {
  final String image;
  final String title;

  const Features({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assets/images/$image'),
          ),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.raleway(fontSize: 18.sp),
            ),
          ),
        ],
      ),
    );
  }
}
