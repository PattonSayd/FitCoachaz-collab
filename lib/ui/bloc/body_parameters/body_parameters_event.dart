part of 'body_parameters_bloc.dart';

@freezed
class BodyParametersEvent with _$BodyParametersEvent {
  const factory BodyParametersEvent.genderChanged(GenderState gender) =
      _GenderEvent;
  const factory BodyParametersEvent.focusedBornIndex(
      {required int focusedIndex}) = _FocusedBornEvent;
  const factory BodyParametersEvent.focusedHeightIndex(
      {required int focusedIndex}) = _FocusedHeightEvent;
  const factory BodyParametersEvent.focusedWeightIndex(
      {required int focusedIndex}) = _FocusedWeightEvent;
}
