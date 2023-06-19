import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(): super(const AuthState.loading());
  FirebaseAuth auth = FirebaseAuth.instance;

  String verificationId = "";

  Future<void> initialData() async {
    try {
      emit(AuthState.notAuth());
    } catch (e) {
      emit(AuthState.failure(error: e));
    }
  }

  Future<void> authPhone(String phoneNumber) async {


    //ConfirmationResult confirmationResult = await auth.signInWithPhoneNumber('+$phoneNumber');
    
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-resolution timed out...
      },
      verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async{
        try {
          await auth.signInWithCredential(phoneAuthCredential);
          emit(AuthState.auth());
        }catch(e){
          emit(AuthState.failure(error: e));
        }
      },
      verificationFailed: (FirebaseAuthException error) {
        emit(AuthState.failure(error: error));
      },
      codeSent: (String verificationId, int? forceResendingToken) async {
        this.verificationId = verificationId;
        emit(AuthState.codeSent());
      },
    );



  }
  Future<void> singInWithSMS(String sms)async {
    // Create a PhoneAuthCredential with the code
    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: sms);

    // Sign the user in (or link) with the credential
    final result = await auth.signInWithCredential(credential);
    if(result.user != null){
      emit(AuthState.auth());
    }else{
      emit(AuthState.failure(error: ""));
    }
}
}
