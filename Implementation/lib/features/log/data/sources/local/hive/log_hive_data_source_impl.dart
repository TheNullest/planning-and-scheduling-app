import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/log/data/sources/base/log_data_source.dart';

class LogHiveDataSourceImpl implements LogDataSource<LogHiveModel> {
  LogHiveDataSourceImpl(this._hiveBox);

  final HiveBoxRunner<LogHiveModel> _hiveBox;
  @override
  EResultFutureVoid createLogs(List<LogHiveModel> logs) async {
    try {
      return await _hiveBox.runBoxOperation(
        job: (box) async {
          await box.addAll(logs);
        },
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<LogHiveModel>> getLogs(List<String>? logIds) async {
    try {
      final result = await _hiveBox.runBoxOperation<List<LogHiveModel>>(
        job: (box) async => box.values.toList(),
      );
      return result;
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<LogHiveModel>> getWithDateRange({
    required DateTime fromDate,
    required DateTime toDate,
  }) async {
    try {
      final result = await _hiveBox.runBoxOperation<List<LogHiveModel>>(
        job: (box) async => box.values
            .where(
              (log) =>
                  log.recordedAt.compareTo(fromDate) >= 0 && log.recordedAt.compareTo(toDate) <= 0,
            )
            .toList(),
      );
      return result;
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
