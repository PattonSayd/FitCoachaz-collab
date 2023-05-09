part of 'congratulation_bloc.dart';

enum CongratulationStatus {
  loading,
  success,
}

class CongratulationState extends Equatable {
  const CongratulationState._({
    this.name = '',
    this.status = CongratulationStatus.loading,
  });

  final String name;
  final CongratulationStatus status;

  const CongratulationState.initial() : this._();
  const CongratulationState.loading() : this._();
  const CongratulationState.success(name)
      : this._(name: name, status: CongratulationStatus.success);

  @override
  List<Object> get props => [];
}
