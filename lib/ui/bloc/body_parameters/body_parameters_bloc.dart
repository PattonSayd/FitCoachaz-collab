import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_parameters_event.dart';
part 'body_parameters_state.dart';
part 'body_parameters_bloc.freezed.dart';

class BodyParametersBloc
    extends Bloc<BodyParametersEvent, BodyParametersState> {
  BodyParametersBloc() : super(const BodyParametersState()) {
    on<BodyParametersEvent>((event, emit) => event.map(
          genderChanged: (event) => _onGenderChanged(event, emit),
          focusedBornIndex: (event) => _onfocusedBornIndexChanged(event, emit),
          focusedHeightIndex: (event) =>
              _onfocusedHeightIndexChanged(event, emit),
          focusedWeightIndex: (event) =>
              _onfocusedWeightIndexChanged(event, emit),
        ));
  }

  void _onGenderChanged(
    _GenderEvent event,
    Emitter<BodyParametersState> emit,
  ) {
    emit(
      state.copyWith(gender: event.gender),
    );
  }

  void _onfocusedBornIndexChanged(
    _FocusedBornEvent event,
    Emitter<BodyParametersState> emit,
  ) {
    emit(
      state.copyWith(
        born: BornState(focusedIndex: event.focusedIndex),
      ),
    );
  }

  void _onfocusedHeightIndexChanged(
    _FocusedHeightEvent event,
    Emitter<BodyParametersState> emit,
  ) {
    emit(
      state.copyWith(
        height: HeightState(focusedIndex: event.focusedIndex),
      ),
    );
  }

  void _onfocusedWeightIndexChanged(
    _FocusedWeightEvent event,
    Emitter<BodyParametersState> emit,
  ) {
    emit(
      state.copyWith(
        weight: WeightState(focusedIndex: event.focusedIndex),
      ),
    );
  }
}
