import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/email_repository.dart';
import '../services/firebase_auth_service.dart';
import '../storage/table_key.dart';
import '../services/firestore_service.dart';
import '../storage/key_store.dart';
import '../storage/sharedPrefs/key_value_store.dart';

class EmailRepositoryImp extends EmailRepository {
  EmailRepositoryImp({
    required final KeyValueStore sharedPrefs,
    required final FirestoreService service,
    required final FirebaseAuthService auth,
  })  : _sharedPrefs = sharedPrefs,
        _service = service,
        _auth = auth;

  final KeyValueStore _sharedPrefs;
  final FirestoreService _service;
  final FirebaseAuthService _auth;

  @override
  Future<void> saveUserCredential(User credential) async {
    await _service.create(TableKey.users, credential.uid, {
      'uid': credential.uid,
      'phone': credential.phoneNumber,
      'email': credential.email,
    });
  }

  @override
  Future<String?> getCurrentUid() async => _auth.getCurrentUid();

  @override
  Future<void> sendEmailVerification(String email) async =>
      await _auth.sendEmailVerification(email);

  @override
  Future<void> setEmailPrefs(String? email) async {
    await _sharedPrefs.write<String>(
        TypeStoreKey<String>(KeyStore.email), email);
  }

  @override
  Future<String> getEmailPrefs() async =>
      await _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.email)) ??
      '';

  @override
  Future<UserCredential?> getCredential() async {
    return await _sharedPrefs.read<UserCredential>(TypeStoreKey('credent'));
  }
}
