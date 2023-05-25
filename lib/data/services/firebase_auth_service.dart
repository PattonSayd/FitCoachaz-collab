import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/app/assemble/assemble.dart';

import '../../app/config.dart';

class FirebaseAuthService {
  Future<UserCredential> signInWithCredential(
    AuthCredential credential,
  ) async =>
      await assemble.auth.signInWithCredential(credential);

  Future<String?> getCurrentUid() async {
    return assemble.auth.currentUser?.uid;
  }

  Future<void> verifyNumber({
    String? phoneNumber,
    PhoneMultiFactorInfo? multiFactorInfo,
    required void Function(PhoneAuthCredential) verificationCompleted,
    required void Function(FirebaseAuthException) verificationFailed,
    required void Function(String, int?) codeSent,
    required void Function(String) codeAutoRetrievalTimeout,
    String? autoRetrievedSmsCodeForTesting,
    required Duration timeout,
    int? forceResendingToken,
    MultiFactorSession? multiFactorSession,
  }) async {
    await assemble.auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      timeout: timeout,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      forceResendingToken: forceResendingToken,
    );
  }

  PhoneAuthCredential phoneCredential(String verificationId, String otpCode) =>
      PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otpCode,
      );

  Future<void> sendEmailVerification(String email) async {
    await assemble.auth.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: acs,
    );
  }
}
