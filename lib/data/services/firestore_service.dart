import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> create(
    String table,
    String uid,
    Map<String, dynamic> data,
  ) async {
    await _firestore.collection(table).doc(uid).set(data);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> read(
    String table,
    String uid,
  ) async {
    return await _firestore.collection(table).doc(uid).get();
  }

  Future<void> update(
    String table,
    String uid,
    Map<Object, Object?> data,
  ) async {
    await _firestore.collection(table).doc(uid).update(data);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getDocumnets(
    String table,
    String field,
    int limit,
  ) async {
    return await _firestore.collection(table).where(field).limit(limit).get();
  }

  Future<Map<String, dynamic>?> getUserData(String table, String uid) async {
    return await _firestore
        .collection(table)
        .doc(uid)
        .get()
        .then((v) => v.data());
  }
}
