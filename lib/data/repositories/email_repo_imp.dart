import '../../domain/repositories/email_repository.dart';
import '../storage/table_key.dart';
import '../services/firestore_service.dart';
import '../storage/key_store.dart';
import '../storage/sharedPrefs/key_value_store.dart';

class EmailRepositoryImp extends EmailRepository {
  EmailRepositoryImp({
    required KeyValueStore sharedPrefs,
    required FirestoreService service,
  })  : _sharedPrefs = sharedPrefs,
        _service = service;

  final KeyValueStore _sharedPrefs;
  final FirestoreService _service;

  @override
  Future<void> saveEmail(String uid, String email) async {
    await _service.update(TableKey.users, uid, {
      'email': email,
    });
  }

  @override
  Future<String?> getUserId() async {
    return _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
  }
}
