import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());
  Dio dio = Dio();
  Future<void>sentEmail({required String subject,required String email,required String message})async{
    try{
     dio.post(
       "https://api.emailjs.com/api/v1.0/email/send",

         data: {
           'service_id': 'service_u7od59f',
           'template_id': 'template_lf6tfri',
           'user_id': 'CfIMihIsCgUP755fX',
           'template_params':{
             'user_email': email,
             'user_subject': subject,
             'user_message': message,
           }
         },

     );
      emit(ContactSentEmail());
    }catch(e){
      emit(ErrorSentEmail(errorMessage: e.toString()));
    }

  }
}
