// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitcoachaz/ui/formz/phone_field/phone_field.dart';

part 'phone_field_event.dart';
part 'phone_field_state.dart';

class PhoneFieldBloc extends Bloc<RegisterFormEvent, PhoneFieldState> {
  PhoneFieldBloc() : super(const PhoneFieldState()) {
    on<PhoneFieldEvent>(_onPhoneFieldChanged);
    on<PrefixEvent>(_onPrefixMegre);
  }

  void _onPhoneFieldChanged(
    PhoneFieldEvent event,
    Emitter<PhoneFieldState> emit,
  ) {
    final phone = PhoneField.dirty(event.phone);
    emit(
      state.copyWith(
        phone: phone.isNotValid ? phone : PhoneField.pure(event.phone),
      ),
    );
  }

  _onPrefixMegre(
    PrefixEvent event,
    Emitter<PhoneFieldState> emit,
  ) {
    emit(state.copyWith(prefix: event.prefix));
  }
}
