import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class NavBarAnimationCubit extends Cubit<bool> {
  NavBarAnimationCubit(super.initialState);


  showNavBar({required status}){
    emit(status);
  }
}
