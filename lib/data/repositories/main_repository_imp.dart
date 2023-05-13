import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
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
    final sports = await _service.getDataByTable(TableKey.sports);
    return await Future.wait(sports.docs.map((doc) async {
      final data = await _createReference(doc, 'image');
      return Sports.fromJson(data);
    }).toList());
  }

  @override
  Future<List<Coach>> getCoaches() async {
    final coaches = await _service.getDataByTable(TableKey.coaches);
    return await Future.wait(coaches.docs.map((doc) async {
      final data = await _createReference(doc, 'photo');
      return Coach.fromJson(data);
    }).toList());
  }

  Future<Map<String, dynamic>> _createReference(
    QueryDocumentSnapshot<Map<String, dynamic>> doc,
    String field,
  ) async {
    final String imageUrl = doc.get(field);
    final url = await _storage.getHttpsUrl(imageUrl);
    final data = doc.data();
    data[field] = url;
    return data;
  }
}
