import 'package:fitcoachaz/data/models/coach.dart';

abstract class SearchRepository {
  Future<List<Coach>> search(List<String> keywords);
}
