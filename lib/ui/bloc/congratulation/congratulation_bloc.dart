import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitcoachaz/domain/repositories/congratulation/congratulation_repository.dart';

part 'congratulation_event.dart';
part 'congratulation_state.dart';

class CongratulationBloc
    extends Bloc<CongratulationEvent, CongratulationState> {
  CongratulationBloc({
    required CongratulationRepository repository,
  })  : _repository = repository,
        super(CongratulationInitial()) {
    on<CongratulationEvent>((event, emit) {});
  }

  final CongratulationRepository _repository;
}
