import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/log/data/sources/base/log_data_source.dart';

class LogHiveDataSourceImpl implements LogDataSource<LogHiveModel> {
  LogHiveDataSourceImpl(this._hiveBox);

  final HiveBoxRunner<LogHiveModel> _hiveBox;
  String get _boxName => HiveBoxConstants.syncLogsBox;

  @override
  EResultFutureVoid createLogs(List<LogHiveModel> logs) async => tryCatchEither(
        action: () async => _hiveBox.runBoxOperation(
          job: (box) async {
            await box.addAll(logs);
          },
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<LogHiveModel>> getLogs(List<String>? logIds) async =>
      tryCatchEither<List<LogHiveModel>>(
        action: () async => _hiveBox.runBoxOperation<List<LogHiveModel>>(
          job: (box) async => box.values.toList(),
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<LogHiveModel>> getWithDateRange({
    required DateTime fromDate,
    required DateTime toDate,
  }) async =>
      tryCatchEither<List<LogHiveModel>>(
        action: () async => _hiveBox.runBoxOperation<List<LogHiveModel>>(
          job: (box) async => box.values
              .where(
                (log) =>
                    log.recordedAt.compareTo(fromDate) >= 0 &&
                    log.recordedAt.compareTo(toDate) <= 0,
              )
              .toList(),
        ),
        failureType: FailureType.local,
      );
}
