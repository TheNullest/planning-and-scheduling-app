part of 'network_connectivity_monitor_cubit.dart';

sealed class NetworkConnectivityMonitorState extends Equatable {
  const NetworkConnectivityMonitorState();

  @override
  List<Object> get props => [];
}

final class NetworkConnectivityMonitorInitialState
    extends NetworkConnectivityMonitorState {}

final class NetworkConnectivityMonitorSuccessState
    extends NetworkConnectivityMonitorState {}

final class NetworkConnectivityMonitorFailureState
    extends NetworkConnectivityMonitorState {}
