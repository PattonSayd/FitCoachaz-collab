part of 'congratulation_bloc.dart';

class CongratulationState extends Equatable {
  const CongratulationState._({this.name = ''});

  final String name;

  const CongratulationState.initial() : this._();
  const CongratulationState.loading() : this._();
  const CongratulationState.success(name) : this._(name: name);

  @override
  List<Object> get props => [];
}
