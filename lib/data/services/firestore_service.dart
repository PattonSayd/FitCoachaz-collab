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
    await FirebaseFirestore.instance.collection(table).doc(uid).update(data);
  }
}
