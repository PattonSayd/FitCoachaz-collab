import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/data/storage/table_key.dart';

import '../../domain/repositories/session_repository.dart';
import '../../logger.dart';
import '../services/firebase_auth_service.dart';
import '../services/firestore_service.dart';
import '../storage/key_store.dart';
import '../storage/sharedPrefs/key_value_store.dart';

class SessionRepositoryImp extends SessionRepository {
  SessionRepositoryImp({
    required final KeyValueStore sharedPrefs,
    required final FirestoreService service,
  })  : _sharedPrefs = sharedPrefs,
        _service = service;

  final FirestoreService _service;
  final KeyValueStore _sharedPrefs;

  @override
  Future<String?> getUserId() async =>
      await _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));

  @override
  Future<bool> checkSession() async {
    try {
      logger.wtf('session 1');
      final uid =
          await _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
      logger.wtf('session 2');

      if (uid != null) {
        final userData = await _service.getUserData(TableKey.users, uid)
            as Map<String, dynamic>;
        logger.wtf('session 3');

        final userIsVerified = userData['isVerified'];
        if (userIsVerified != null && userIsVerified) {
          return true;
        }
        return false;
      }
      return false;
    } catch (error) {
      logger.d('Error occurred in checkSession(): $error');
      return false;
    }
  }
}
