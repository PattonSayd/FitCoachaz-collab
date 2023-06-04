import 'dart:async';

class ShowAppBarState {
  final streamController = StreamController<bool>.broadcast();
  final bool _initial = true;

  Stream<bool> get stream => streamController.stream;
  bool get initial => _initial;
}
