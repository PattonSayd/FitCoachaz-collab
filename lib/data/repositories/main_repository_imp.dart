import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:fitcoachaz/data/models/sports.dart';
import 'package:fitcoachaz/data/services/firebase_storage_service.dart';
import 'package:fitcoachaz/data/services/firestore_service.dart';

import '../../domain/repositories/main_repository.dart';
import '../storage/table_key.dart';

class MainRepositoryImp extends MainRepository {
  MainRepositoryImp({
    required final FirestoreService service,
    required final FirebaseStorageService storage,
  })  : _service = service,
        _storage = storage;

  final FirestoreService _service;
  final FirebaseStorageService _storage;

  @override
  Future<List<Sports>> getSports() async {
    final sportsData = await _service.getDataByTable(TableKey.sports);
    return await _fetchDataWithImages<Sports>(
      sportsData,
      'image',
      (data) => Sports.fromJson(data),
    );
  }

  @override
  Future<List<Coach>> getCoaches() async {
    final coachesData = await _service.getDataByTable(TableKey.coaches);
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
    return Future.wait(docs.docs.map((doc) async {
      final url = await _storage.createReference(doc, field);
      final data = doc.data();
      data[field] = url;
      return fromJson(data);
    }).toList());
  }
}
