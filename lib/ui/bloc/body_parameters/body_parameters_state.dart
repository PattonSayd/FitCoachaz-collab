part of 'body_parameters_bloc.dart';

enum GenderState {
  male,
  female,
}

enum BodyParameterStatus { initial }

@freezed
class BodyParametersState with _$BodyParametersState {
  const factory BodyParametersState({
    @Default(BodyParameterStatus.initial) BodyParameterStatus status,
    @Default(GenderState.male) GenderState gender,
    @Default(BornState()) BornState born,
    @Default(HeightState()) HeightState height,
    @Default(WeightState()) WeightState weight,
  }) = _BodyParametersState;
}

@freezed
class BornState with _$BornState {
  const factory BornState({
    @Default(1998) int focusedIndex,
    @Default(1960) int startPoint,
    @Default(56) int length,
  }) = _BornState;
}

@freezed
class HeightState with _$HeightState {
  const factory HeightState({
    @Default(170) int focusedIndex,
    @Default(100) int startPoint,
    @Default(151) int length,
  }) = _HeightState;
}

@freezed
class WeightState with _$WeightState {
  const factory WeightState({
    @Default(80) int focusedIndex,
    @Default(36) int startPoint,
    @Default(165) int length,
  }) = _WeightState;
}
