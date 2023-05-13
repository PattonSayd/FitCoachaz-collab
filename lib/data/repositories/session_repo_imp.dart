import 'package:fitcoachaz/data/storage/table_key.dart';

import '../../domain/repositories/session_repository.dart';
import '../../logger.dart';
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
      final uid =
          await _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
      if (uid != null) {
        final userData = await _service.getDataById(TableKey.users, uid)
            as Map<String, dynamic>;
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

  @override
  Future<void> logout() async =>
      _sharedPrefs.write(TypeStoreKey(KeyStore.uid), null);
}
