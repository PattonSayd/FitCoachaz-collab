import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../data/models/user_details.dart';
import '../../../data/storage/sharedPrefs/key_store.dart';
import '../../../data/storage/sharedPrefs/key_value_store.dart';

class CongratulationRepository {
  const CongratulationRepository({required KeyValueStore sharedPrefs})
      : _sharedPrefs = sharedPrefs;

  final KeyValueStore _sharedPrefs;

  Future<String?> getUserById(String userId) async {
    final userSnap =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();
    if (!userSnap.exists) return null;
    final json = userSnap.data() as Map<String, dynamic>;
    final res = UserDetails.fromJson(json);
    return res.name;
  }

  Future<String?> getUserId() async {
    return _sharedPrefs.read<String>(TypeStoreKey<String>(KeyStore.uid));
  }
}
