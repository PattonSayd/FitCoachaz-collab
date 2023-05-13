import 'package:fitcoachaz/data/models/sports.dart';

import '../../data/models/coach.dart';

abstract class MainRepository {
  Future<List<Sports>> getSports();
  Future<List<Coach>> getCoaches();
}
