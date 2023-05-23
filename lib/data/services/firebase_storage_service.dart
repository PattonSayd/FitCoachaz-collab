import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final _storage = FirebaseStorage.instance;

  Future<String> createReference(
    QueryDocumentSnapshot<Map<String, dynamic>> doc,
    String field,
  ) async {
    final String imageUrl = doc.get(field);
    final ref = _storage.refFromURL(imageUrl);
    return await ref.getDownloadURL();
  }
}
