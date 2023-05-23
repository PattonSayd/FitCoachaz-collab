import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/app/assemble/assemble.dart';
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

  Future<void> _onChechSession(
    Emitter<SessionState> emit,
  ) async {
    // final session = await _repository.checkSession();
    // if (session) {
    //   emit(const SessionState.authorized());
    // } else {
    //   emit(const SessionState.unauthorized());
    // }
  }

  void _onLogout(Emitter<SessionState> emit) async {
    await assemble.auth.signOut();

    _repository.logout();
    emit(const SessionState.unauthorized());
  }
}


// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fitcoachaz/app/assemble/assemble.dart';
// import 'package:fitcoachaz/logger.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import '../../../domain/repositories/session_repository.dart';

// part 'session_state.dart';
// part 'session_event.dart';
// part 'session_bloc.freezed.dart';

// class SessionBloc extends Bloc<SessionEvent, SessionState> {
//   SessionBloc({
//     required final SessionRepository repository,
//   })  : _repository = repository,
//         super(const SessionState.initial()) {
//     on<SessionEvent>(
//       (event, emit) => event.map(
//         checkSession: (_) async => await _onChechSession(emit),
//         logout: (_) async => await _onLogout(emit),
//       ),
//     );
//     add(const SessionEvent.checkSession());
//   }

//   final SessionRepository _repository;
//   StreamSubscription<User?>? authStateSubscription;

//   Future<void> _onChechSession(
//     Emitter<SessionState> emit,
//   ) async {
//     authStateSubscription =
//         assemble.auth.authStateChanges().listen((User? user) {
//       final userVerified = user != null;
//       final phoneNoVerified = user?.phoneNumber != null;
//       final emailVerified = user?.emailVerified ?? false;
//       final displayNameVarified = user?.displayName != null;

//       final isUserAuthenticated =
//           userVerified && emailVerified && displayNameVarified;

//       if (isUserAuthenticated && emailVerified && !displayNameVarified) {
//         emit(const SessionState.displayNameVerification());
//       } else if (isUserAuthenticated && !emailVerified) {
//         emit(const SessionState.emailVerification());
//       } else if (!isUserAuthenticated) {
//         emit(const SessionState.unauthorized());
//       } else if (isUserAuthenticated) {
//         emit(const SessionState.authorized());
//       }
//     });

//     await authStateSubscription?.asFuture();
//   }
//   // final session = await _repository.checkSession();
//   // if (session) {
//   //   emit(const SessionState.authorized());
//   // } else {
//   //   emit(const SessionState.unauthorized());
//   // }

//   Future<void> _onLogout(Emitter<SessionState> emit) async {
//     await assemble.auth.signOut();

//     _repository.logout();
//     emit(const SessionState.unauthorized());
//   }

//   @override
//   Future<void> close() {
//     authStateSubscription?.cancel();
//     return super.close();
//   }
// }
