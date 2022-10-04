import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meta/meta.dart';

import '../../Views/PageViewRoutes/ContactUsRoutes/contact_us_static_pro.dart';

part 'submit_message_state.dart';

class SubmitMessageCubit extends Cubit<SubmitMessageState> {
  SubmitMessageCubit() : super(SubmitMessageInitial());


  submitMessage() async {


    emit(SubmitMessageLoading());


    var ref = FirebaseFirestore.instance.collection(
        'ContactUs');

  try{

    await ref.add({
      'user_name': ContactUsStaticProperties.nameController
          .text.trim(),
      'user_email': ContactUsStaticProperties
          .emailController.text.trim(),
      'phone_number': ContactUsStaticProperties
          .phoneNumberController.text.trim(),
      'message': ContactUsStaticProperties.messageController
          .text.trim()
    }).whenComplete(() =>
        ContactUsStaticProperties.clearAllFields());



    Fluttertoast.showToast(msg: 'Your Feedback is Submitted');
    emit(SubmitMessageLoaded());

  } on FirebaseException catch (e){


    Fluttertoast.showToast(msg: e.code);
    emit(SubmitMessageInitial());
  }


  }

  disposeMessage(){
    emit(SubmitMessageInitial());
  }

}


