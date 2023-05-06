import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final auth = FirebaseAuth.instance;

  Future<UserCredential> signIn(AuthCredential credential) async =>
      await auth.signInWithCredential(credential);

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
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      timeout: timeout,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      forceResendingToken: forceResendingToken,
    );
  }
}
