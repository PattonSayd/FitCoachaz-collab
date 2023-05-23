import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:fitcoachaz/data/storage/table_key.dart';

import '../../domain/repositories/category_reposytory.dart';
import '../services/firebase_storage_service.dart';
import '../services/firestore_service.dart';

class CategoryRepositoryImp extends CategoryRepository {
  CategoryRepositoryImp({
    required final FirestoreService service,
    required final FirebaseStorageService storage,
  })  : _service = service,
        _storage = storage;

  final FirestoreService _service;
  final FirebaseStorageService _storage;

  @override
  Future<List<Coach>> getDataByCategory(String sport) async {
    final coachesData = await _service.getDataByCategory(
      TableKey.coaches,
      'sport',
      sport,
    );
    return await _fetchDataWithImages<Coach>(
      coachesData,
      'photo',
      (data) => Coach.fromJson(data),
    );
  }

  Future<List<T>> _fetchDataWithImages<T>(
    QuerySnapshot<Map<String, dynamic>> docs,
    String field,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    return await Future.wait(docs.docs.map((doc) async {
      final url = await _storage.createReference(doc, field);
      final data = doc.data();
      data[field] = url;
      return fromJson(data);
    }).toList());
  }
}
