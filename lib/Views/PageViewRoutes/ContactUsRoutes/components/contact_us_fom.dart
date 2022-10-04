import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/Controllers/Cubits/submit_message_cubit.dart';
import 'package:my_portfolio_web/Models/Utils/responsive.dart';

import '../contact_us_static_pro.dart';

class ContactUsForm extends StatefulWidget {
  const ContactUsForm({Key? key}) : super(key: key);

  @override
  State<ContactUsForm> createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      flex: width < Responsive.tabletMinWidth ? 2:1,


      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [


          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: ContactUsStaticProperties.nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your name'),
                ),
              ),
              SizedBox(
                width: 10.sp,
              ),
              Expanded(
                child: TextField(
                  controller: ContactUsStaticProperties.emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your email'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.sp,
          ),
          TextField(
            controller: ContactUsStaticProperties.phoneNumberController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Phone number'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          TextField(
            controller: ContactUsStaticProperties.messageController,
            maxLines: 4,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Your Message...'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                child: BlocBuilder<SubmitMessageCubit, SubmitMessageState>(
                  builder: (context, state) {
                    if (state is SubmitMessageLoading) {
                      return Container(
                        height: 45.sp,
                        color: Colors.orange,
                        child: const Center(
                          child: CircularProgressIndicator(),),
                      );
                    } else {
                      return InkWell(
                        onTap: () async {
                          if (ContactUsStaticProperties.validate() == true) {
                            context.read<SubmitMessageCubit>()
                                .submitMessage();
                          }
                        },
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
                      );
                    }
                  },
                ),
              ),
            ],
          ),


        ],
      ),
    )
    ;
  }
}
