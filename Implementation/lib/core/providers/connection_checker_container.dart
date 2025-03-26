import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:zamaan/data/network/connection_checker_impl.dart';
import 'package:zamaan/domain/network/connection_checker.dart';

final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());

final internetConnectionCheckerProvider =
    Provider<InternetConnection>((ref) => InternetConnection());

final connectionCheckerProvider = Provider<ConnectionChecker>(
  (ref) => ConnectionCheckerImpl(
    internetConnection: ref.read(internetConnectionCheckerProvider),
    connectivity: ref.read(connectivityProvider),
  ),
);

final connectionStatusProvider = StreamProvider.autoDispose<bool>(
  (ref) => ref.watch(connectionCheckerProvider).connectionStatus,
);
