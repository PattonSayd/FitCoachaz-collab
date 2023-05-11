import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repositories/session_repository.dart';

part 'session_state.dart';
part 'session_event.dart';
part 'session_bloc.freezed.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc({
    required final SessionRepository repository,
  })  : _repository = repository,
        super(const SessionState.initial()) {
    on<SessionEvent>(
      (event, emit) => event.map(
        checkSession: (_) => _onChechSession(emit),
        logout: (_) => _onLogout(emit),
      ),
    );

    add(const SessionEvent.checkSession());
  }

  final SessionRepository _repository;

  void _onChechSession(
    Emitter<SessionState> emit,
  ) async {
    final session = await _repository.checkSession();
    if (session) {
      emit(const SessionState.authorized());
    } else {
      emit(const SessionState.unauthorized());
    }
  }

  // final FirebaseAuth _auth = FirebaseAuth.instance;

  void _onLogout(Emitter<SessionState> emit) async {
    // await _auth.signOut();

    _repository.logout();
    emit(const SessionState.unauthorized());
  }
}
