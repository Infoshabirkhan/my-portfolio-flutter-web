import 'package:bloc/bloc.dart';


class ServicesProvideCubit extends Cubit<bool> {
  ServicesProvideCubit(super.initialState);



  showServices({required status}){
    emit(status);
  }
}
