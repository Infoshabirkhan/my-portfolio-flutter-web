
import 'package:bloc/bloc.dart';


class OurServicesAnimationCubit extends Cubit<bool> {
  OurServicesAnimationCubit(super.initialState);


  visible({required status}){
    emit(status);
  }
}
