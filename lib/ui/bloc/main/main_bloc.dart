import 'package:bloc/bloc.dart';
import 'package:fitcoachaz/domain/repositories/main_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc({
    required final MainRepository repository,
  })  : _repository = repository,
        super(const MainState.initial()) {
    on<MainEvent>((event, emit) => event.map(
          logout: logout,
        ));
  }

  final MainRepository _repository;
}
