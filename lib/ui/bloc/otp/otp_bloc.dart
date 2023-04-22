import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitcoachaz/app/config.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc() : super(OtpState.initial) {
    on<OtpEvent>(_onOtpChanged);
  }

  FutureOr<void> _onOtpChanged(
    OtpEvent event,
    Emitter<OtpState> emit,
  ) {
    final isValid = event.otpCode.length == otpLength ? true : false;
    emit(OtpState(otpCode: event.otpCode, isValid: isValid));
  }
}
