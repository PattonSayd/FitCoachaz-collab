import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final _auth = FirebaseAuth.instance;

  Future<UserCredential> getCredential(AuthCredential credential) async =>
      await _auth.signInWithCredential(credential);

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
    await _auth.verifyPhoneNumber(
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
