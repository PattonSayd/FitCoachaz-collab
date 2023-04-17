part of 'network_connectivity_cubit.dart';

enum NetworkConnectivityType {
  connected,
  offline,
  unknown,
}

class NetworkConnectivityState extends Equatable {
  const NetworkConnectivityState({this.type = NetworkConnectivityType.unknown});

  final NetworkConnectivityType type;

  @override
  List<Object> get props => [type];
}
