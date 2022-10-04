import 'package:flutter/cupertino.dart';

class PageViewStatic{

  static PageController pageController = PageController();

  static ScrollController scrollController = ScrollController();

  static  double getHeight({required int state}){
    if(state == 0) {
      return aboutUsHeight;
    }else if(state == 1){
      return servicesHeight;

    }else if (state == 2){
      return portfolioHeight;
    }else{
      return contactUsHeight;
    }
  }




}

const  double aboutUsHeight = 2500;  // 0 index in page view
const  double servicesHeight = 1500; // 1 index in page view
const  double portfolioHeight = 2400; // 2 index in page view
const double contactUsHeight = 1500;  // 3 index in page view


