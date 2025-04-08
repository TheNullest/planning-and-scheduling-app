import 'package:zamaan/core/utils/typedef.dart';

abstract class LogRepository<T> {
  EResultFutureVoid createLog(T log);
  EResultFutureVoid createBulkLogs(List<T> logs);
  EResultFuture<List<T>> getLogs(String? userId);
  EResultFuture<List<T>> getSinceDate({
    required DateTime fromDate,
    String? userId,
  });
}
