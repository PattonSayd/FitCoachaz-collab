import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'network_connectivity_state.dart';

class NetworkConnectivityCubit extends Cubit<NetworkConnectivityState> {
  final Connectivity _connectivity;
  late final StreamSubscription _connectivityStream;

  NetworkConnectivityCubit({required Connectivity connectivity})
      : _connectivity = connectivity,
        super(const NetworkConnectivityState()) {
    _connectivityStream =
        _connectivity.onConnectivityChanged.listen(_onCheckNetworkConnectivity);
  }

  void _onCheckNetworkConnectivity(ConnectivityResult state) {
    if (state == ConnectivityResult.wifi ||
        state == ConnectivityResult.mobile) {
      emit(const NetworkConnectivityState(
          type: NetworkConnectivityType.connected));
    } else if (state == ConnectivityResult.none) {
      emit(const NetworkConnectivityState(
          type: NetworkConnectivityType.offline));
    } else {
      emit(const NetworkConnectivityState(
          type: NetworkConnectivityType.unknown));
    }
  }

  @override
  Future<void> close() {
    _connectivityStream.cancel();
    return super.close();
  }
}
