import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:zamaan/domain/network/connection_checker.dart';

/// A concrete implementation of the [NetworkConnectivityMonitor] interface that\
/// uses [ConnectivityPlus] to observe connectivity changes and\
/// [InternetConnectionCheckerPlus] to verify actual internet access
class NetworkConnectivityMonitorrImpl implements NetworkConnectivityMonitor {
  NetworkConnectivityMonitorrImpl({
    required this.internetConnection,
    required this.connectivity,
  });

  /// A helper that checks whether the device has active internet access.
  final InternetConnection internetConnection;

  /// Listens for connectivity state changes.
  final Connectivity connectivity;

  @override
  Future<bool> get isConnected async => internetConnection.hasInternetAccess;

  @override
  Stream<bool> get connectionStatus => connectivity.onConnectivityChanged
      // For every connectivity event, check the actual internet access
      .asyncMap((_) => isConnected)
      // Emit values only when they change
      .distinct()
      // Debounce the stream to avoid rapid-fire emission of events.
      .transform(_debounce(const Duration(milliseconds: 500)));

  /// A custom debounce [StreamTransformer] that delays the emission of events
  ///
  /// Only the last event within the debounce [duration] is emitted.
  StreamTransformer<T, T> _debounce<T>(Duration duration) {
    Timer? timer;
    T? lastValue;
    // Use a StreamTransformer.fromHandlers to intercept each event.
    return StreamTransformer<T, T>.fromHandlers(
      handleData: (T data, EventSink<T> sink) {
        // Update the last value and cancel any existing timer.
        lastValue = data;
        timer?.cancel();

        // Start a new timer that will emit the last value when the duration elapses.
        timer = Timer(duration, () {
          if (lastValue != null) {
            sink.add(lastValue as T);
            lastValue = null;
          }
        });
      },
      // When the stream is done, cancel any pending timer and forward the last item.
      handleDone: (EventSink<T> sink) {
        timer?.cancel();
        if (lastValue != null) {
          sink.add(lastValue as T);
        }
        sink.close();
      },
      // Forward errors to the sink.
      handleError: (error, stackTrace, sink) {
        timer?.cancel();
        sink.addError(error, stackTrace);
      },
    );
  }
}
