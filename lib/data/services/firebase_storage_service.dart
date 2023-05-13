import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final _storage = FirebaseStorage.instance;

  Future<String> getHttpsUrl(String imageUrl) async {
    final ref = _storage.refFromURL(imageUrl);
    return await ref.getDownloadURL();
  }
}
