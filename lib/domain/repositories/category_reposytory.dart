import '../../data/models/coach.dart';

abstract class CategoryRepository {
  Future<List<Coach>> getDataByCategory(String sport);
}
