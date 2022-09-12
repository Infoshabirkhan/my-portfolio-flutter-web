import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class ServicesProvideCubit extends Cubit<bool> {
  ServicesProvideCubit(super.initialState);



  showServices({required status}){
    emit(status);
  }
}
