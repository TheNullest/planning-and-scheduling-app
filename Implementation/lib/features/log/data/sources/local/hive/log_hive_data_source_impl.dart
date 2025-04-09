import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/log/data/sources/base/log_data_source.dart';

class SyncLogHiveDataSourceImpl implements LogDataSource<LogHiveModel> {
  SyncLogHiveDataSourceImpl(this._hiveBox);

  final HiveServices<LogHiveModel> _hiveBox;
  String get _boxName => HiveBoxConstants.syncLogsBox;

  @override
  EResultFutureVoid createBulkLogs(List<LogHiveModel> logs) async => tryCatchEither(
        action: () async => _hiveBox.operator(
          job: (box) async {
            await box.addAll(logs);
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid createLog(LogHiveModel log) async => tryCatchEither(
        action: () async => _hiveBox.operator(
          job: (box) async {
            await box.add(log);
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<LogHiveModel>> getLogs({
    String? userId,
    List<String>? logIds,
    bool fromLocal = true,
  }) async =>
      tryCatchEither<List<LogHiveModel>>(
        action: () async => _hiveBox.operator<List<LogHiveModel>>(
          job: (box) async => box.values.toList(),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<LogHiveModel>> getSinceDate({
    required DateTime fromDate,
    String? userId,
  }) async =>
      tryCatchEither<List<LogHiveModel>>(
        action: () async => _hiveBox.operator<List<LogHiveModel>>(
          job: (box) async => box.values.where((log) => log.recordedAt.isAfter(fromDate)).toList(),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );
}
