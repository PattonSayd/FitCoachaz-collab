import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitcoachaz/data/storage/sharedPrefs/key_store.dart';

import '../../../data/storage/sharedPrefs/key_value_store.dart';

class EmailRepository {
  const EmailRepository({required KeyValueStore sharedPrefs})
      : _sharedPrefs = sharedPrefs;

  final KeyValueStore _sharedPrefs;

  Future<void> saveEmail(String uid, String email) async {
    await FirebaseFirestore.instance.collection('users').doc(uid).update({
      'email': email,
    });
  }

  Future<String?> getUserId() async {
    return _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
  }
}
