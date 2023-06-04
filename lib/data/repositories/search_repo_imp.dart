import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:fitcoachaz/data/storage/table_key.dart';

import 'package:fitcoachaz/data/services/firestore_service.dart';
import 'package:fitcoachaz/domain/repositories/search_repository.dart';

import '../services/firebase_storage_service.dart';

class SearchRepositoryImpl extends SearchRepository {
  SearchRepositoryImpl({
    required final FirestoreService service,
    required final FirebaseStorageService storage,
  })  : _service = service,
        _storage = storage;

  final FirestoreService _service;
  final FirebaseStorageService _storage;

  @override
  Future<List<Coach>> search(List<String> keywords) async {
    String query = keywords[0];

    if (keywords.length > 1) {
      query = '$query ${keywords[1]}';
    }

    final data = await _service.search(TableKey.coaches, 'keywords', query);

    return await _fetchDataWithImages(
      data,
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



  // @override
  // Future<List<Coach>?> serach2(String query) async {
  //   final data = await _service.getCollection(TableKey.coaches);
  //   if (data.docs.isEmpty) return null;

  //   final List<Coach> coach = await _fetchDataWithImages(
  //     data,
  //     'photo',
  //     (data) => Coach.fromJson(data),
  //   );

  //   List<String> searchKeywords = query.toLowerCase().trim().split(' ');

  //   List<Coach> searchResults = coach.where((x) {
  //     String fullName = '${x.name.toLowerCase()} ${x.surname.toLowerCase()}';
  //     return searchKeywords.every((keyword) =>
  //         fullName.indexOf(keyword) == 0 || fullName.contains(' $keyword'));
  //   }).toList();

  //   // List<Coach> searchResults = coach
  //   //     .where((x) =>
  //   //         x.name.toLowerCase().contains(query.trim()) ||
  //   //         x.surname.toLowerCase().contains(query.trim()))
  //   //     .toList();

  //   return searchResults;
  // }