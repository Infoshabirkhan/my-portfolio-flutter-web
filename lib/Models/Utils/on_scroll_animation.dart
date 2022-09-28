

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_web/Controllers/Cubits/our_services_animation_cubit.dart';

import '../../Controllers/Cubits/nav_bar_animation_cubit.dart';
import '../../Controllers/Cubits/nav_control_cubit.dart';
import '../../Controllers/Cubits/services_provide_cubit.dart';

class OnScrollAnimation{








  static servicesAnimation(BuildContext context, bool animate){
    if(context.read<NavControlCubit>().state == 1){
      context.read<ServicesProvideCubit>().showServices(status: animate );

    }
    context.read<NavBarAnimationCubit>().showNavBar(status: false);

  }


  static ourGoalAnimation(BuildContext context, bool visible){
    if(context.read<NavControlCubit>().state == 0){
      context.read<OurServicesAnimationCubit>().visible(status: visible);

    }

  }
}