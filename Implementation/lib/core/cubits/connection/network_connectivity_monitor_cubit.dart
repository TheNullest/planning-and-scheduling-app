import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/domain/network/connection_checker.dart';

part 'network_connectivity_monitor_state.dart';

class NetworkConnectivityMonitorCubit
    extends Cubit<NetworkConnectivityMonitorState> {
  NetworkConnectivityMonitorCubit(this.connectionChecker)
      : super(NetworkConnectivityMonitorInitialState()) {
    _init();
  }

  final NetworkConnectivityMonitor connectionChecker;
  StreamSubscription<bool>? _subscription;

  Future<void> _init() async {
    final iniitiallyConnect = await connectionChecker.isConnected;
    if (iniitiallyConnect) {
      emit(NetworkConnectivityMonitorSuccessState());
    } else {
      emit(NetworkConnectivityMonitorFailureState());
    }
    _subscription = connectionChecker.connectionStatus.listen(
      _handleConnectionChange,
      onError: (error) {
        emit(NetworkConnectivityMonitorFailureState());
      },
    );
  }

  void _handleConnectionChange(bool connected) {
    if (connected) {
      emit(NetworkConnectivityMonitorSuccessState());
    } else {
      emit(NetworkConnectivityMonitorFailureState());
    }
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
