import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your name'),
                ),
              ),
              SizedBox(
                width: 10.sp,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your email'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.sp,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Phone number'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          const TextField(
            maxLines: 4,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Your email'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                child: Container(
                  height: 45.sp,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Submit',
                      style: GoogleFonts.raleway(),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    )
    ;
  }
}
