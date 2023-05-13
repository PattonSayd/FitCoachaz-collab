import 'package:bloc/bloc.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:fitcoachaz/domain/repositories/main_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/sports.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc({
    required final MainRepository repository,
  })  : _repository = repository,
        super(const MainState.initial()) {
    on<MainEvent>((event, emit) => event.map(
          uploadData: (_) => _uploadData(emit),
        ));

    add(const MainEvent.uploadData());
  }

  final MainRepository _repository;

  Future<void> _uploadData(Emitter<MainState> emit) async {
    final List<Sports> sports = await _repository.getSports();
    final List<Coach> coaches = await _repository.getCoaches();
    emit(MainState.initialized(sports, coaches));
  }
}
