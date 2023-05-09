import 'package:fitcoachaz/data/storage/table_key.dart';

import '../services/firestore_service.dart';
import '../storage/key_store.dart';
import '../storage/sharedPrefs/key_value_store.dart';
import '../../domain/repositories/congratulation_repository.dart';

class CongratulationRepositoryImp extends CongratulationRepository {
  CongratulationRepositoryImp({
    required final KeyValueStore sharedPrefs,
    required final FirestoreService service,
  })  : _sharedPrefs = sharedPrefs,
        _service = service;

  final KeyValueStore _sharedPrefs;
  final FirestoreService _service;

  @override
  Future<String?> getUserName(String userId) async {
    final userSnap = await _service.read(TableKey.users, userId);
    if (!userSnap.exists) return null;
    final json = userSnap.data() as Map<String, dynamic>;
    return json['name'] as String;
  }

  @override
  Future<String?> getUserId() async {
    return _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
  }
}
