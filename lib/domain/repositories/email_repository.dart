import 'package:firebase_auth/firebase_auth.dart';

abstract class EmailRepository {
  Future<void> saveUserCredential(User credential);
  Future<String?> getCurrentUid();
  Future<void> sendEmailVerification(String email);
  Future<void> setEmailPrefs(String? email);
  Future<String> getEmailPrefs();
  Future<UserCredential?> getCredential();
}
