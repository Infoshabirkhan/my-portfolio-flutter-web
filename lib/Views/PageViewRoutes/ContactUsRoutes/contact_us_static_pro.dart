

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContactUsStaticProperties{


  static TextEditingController nameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController phoneNumberController = TextEditingController();
  static TextEditingController messageController = TextEditingController();


  static bool validate(){
    if(nameController.text.isEmpty){
      Fluttertoast.showToast(msg: 'Name is Required');
      return false;
    }else if (emailController.text.isEmpty){
      Fluttertoast.showToast(msg: 'Email is Required');
      return false;
    }else if(phoneNumberController.text.isEmpty){
      Fluttertoast.showToast(msg: 'phone number is Required');
      return false;
    }else if(messageController.text.isEmpty){
      Fluttertoast.showToast(msg: 'Message is Required');
      return false;
    }else{
      return true;
    }
  }


  static clearAllFields(){
    nameController.clear();
    emailController.clear();
    phoneNumberController.clear();
    messageController.clear();
  }

}