import 'package:zamaan/core/utils/typedef.dart';

abstract class LogDataSource<T> {
  EResultFutureVoid createLogs(List<T> logs);

  EResultFuture<List<T>> getLogs(List<String>? logIds);

  EResultFuture<List<T>> getWithDateRange({
    required DateTime fromDate,
    required DateTime toDate,
  });
}
