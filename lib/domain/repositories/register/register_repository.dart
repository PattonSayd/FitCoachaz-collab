import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepository {
  final auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  User? firebaseUser;

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
    required int? forceResendingToken,
  }) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      forceResendingToken: forceResendingToken,
      // timeout: const Duration(seconds: 30),
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }
}
