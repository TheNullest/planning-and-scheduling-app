import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class LogRepoImpl extends LogRepository<LogEntity> {
  @override
  EResultFutureVoid createBulkLogs(List<LogEntity> logs) {
    // TODO: implement createBulkLogs
    throw UnimplementedError();
  }

  @override
  EResultFutureVoid createLog(LogEntity log) {
    // TODO: implement createLog
    throw UnimplementedError();
  }

  @override
  EResultFuture<List<LogEntity>> getLogs(String? userId) {
    // TODO: implement getLogs
    throw UnimplementedError();
  }

  @override
  EResultFuture<List<LogEntity>> getSinceDate(
      {required DateTime fromDate, String? userId,}) {
    // TODO: implement getSinceDate
    throw UnimplementedError();
  }
}
