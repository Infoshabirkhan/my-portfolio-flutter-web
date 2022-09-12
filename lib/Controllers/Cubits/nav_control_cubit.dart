import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class NavControlCubit extends Cubit<int> {
  NavControlCubit(super.initialState);


  getIndex({required index}){


    emit(index);
  }
}
