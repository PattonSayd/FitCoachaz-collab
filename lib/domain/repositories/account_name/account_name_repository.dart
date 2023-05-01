import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../data/storage/sharedPrefs/key_store.dart';
import '../../../data/storage/sharedPrefs/key_value_store.dart';

class AccountNameRepository {
  const AccountNameRepository({required KeyValueStore sharedPrefs})
      : _sharedPrefs = sharedPrefs;

  final KeyValueStore _sharedPrefs;

  Future<void> saveAccountName(String uid, String name, String surn) async {
    await FirebaseFirestore.instance.collection('users').doc(uid).update({
      'name': name,
      'surname': surn,
      'isVerified': true,
      'createAt': Timestamp.now(),
    });
  }

  Future<String?> getUserId() async {
    return _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
  }
}
