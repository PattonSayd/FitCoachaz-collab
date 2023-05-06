import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/repositories/account_name_repository.dart';
import '../services/firestore_service.dart';
import '../storage/key_store.dart';
import '../storage/sharedPrefs/key_value_store.dart';
import '../storage/table_key.dart';

class AccountNameRepositoryImp extends AccountNameRepository {
  AccountNameRepositoryImp(
      {required KeyValueStore sharedPrefs, required FirestoreService service})
      : _sharedPrefs = sharedPrefs,
        _service = service;

  final KeyValueStore _sharedPrefs;
  final FirestoreService _service;

  @override
  Future<void> saveAccountName(String uid, String name, String surn) async {
    await _service.update(TableKey.users, uid, {
      'name': name,
      'surname': surn,
      'isVerified': true,
      'createAt': Timestamp.now(),
    });
  }

  @override
  Future<String?> getUserId() async {
    return _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
  }
}
