import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitcoachaz/app/assemble/assemble.dart';
import 'package:fitcoachaz/domain/repositories/congratulation_repository.dart';
import 'package:fitcoachaz/logger.dart';

part 'congratulation_event.dart';
part 'congratulation_state.dart';

class CongratulationBloc
    extends Bloc<CongratulationEvent, CongratulationState> {
  CongratulationBloc({
    required final CongratulationRepository repository,
  })  : _repository = repository,
        super(const CongratulationState.initial()) {
    on<CongratulationGetUserName>(_onGetUserName);
    add(CongratulationGetUserName());
  }

  final CongratulationRepository _repository;

  FutureOr<void> _onGetUserName(
    CongratulationGetUserName event,
    Emitter<CongratulationState> emit,
  ) async {
    const CongratulationState.loading();
    try {
      final uid = assemble.auth.currentUser?.uid;
      if (uid == null) return;
      final name = await _repository.getUserName(uid);
      emit(CongratulationState.success(name));
    } catch (e) {
      logger.d(e);
    }
  }
}
