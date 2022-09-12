import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsive{


  static double tabletMaxWidth   = 1024;
  static double tabletMinWidth   = 768;

 // ============================
  static double mobileMinWith   = 320;
  static double mobileMaxWith   = 480;




  static double destopWidth   = 1224;



  static double pricingPadding( double width){



    if(width < mobileMaxWith){
      return 5.sp;
    }else if (width > destopWidth){
      return  100.sp;
    }else if (width < tabletMinWidth){
      return 10.sp;

    }
    else{
      return 50.sp;
    }

  }

  static double padding({required double width}){



    if(width < mobileMaxWith){
      return 20.sp;
    }else if (width > destopWidth){
      return  100.sp;
    }
    else{
      return 40.sp;
    }

  }


  static double extraLargeFont({required double width}){

//    fontSize: width < Responsive.mobileMaxWith ? 18.sp :width > Responsive.destopWidth ? 45.sp : 25.sp,



    if(width < mobileMaxWith){
      return 25.sp;
    }else if (width > destopWidth){
      return 50.sp;
    }
    else{
      return 40.sp;
    }

  }



  }