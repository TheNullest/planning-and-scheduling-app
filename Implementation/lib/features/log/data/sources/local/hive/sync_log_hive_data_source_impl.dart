import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/log/data/models/local/hive/sync_log.dart';
import 'package:zamaan/features/log/data/sources/base/sync_log_data_source.dart';

class SyncLogHiveDataSourceImpl extends SyncLogDataSource<SyncLogHiveModel> {
  SyncLogHiveDataSourceImpl(this._hiveBox);

  final HiveServices<SyncLogHiveModel> _hiveBox;
  String get _boxName => HiveBoxConstants.usersBox;

  @override
  EResultFutureVoid createSyncLog(SyncLogHiveModel entity) async =>
      tryCatchEither(
        action: () async => _hiveBox.operator(
          job: (box) async {
            await box.add(entity);
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<SyncLogHiveModel>> getUnsyncedLogs(String? userId) async =>
      tryCatchEither<List<SyncLogHiveModel>>(
        action: () async => _hiveBox.operator<List<SyncLogHiveModel>>(
          job: (box) async => box.values
              .where((item) => item.userId == userId && item.isSynced == false)
              .toList(),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid markDeviceAsSynced({
    required String deviceId,
    String? userId,
  }) async =>
      tryCatchEither(
        action: () async => _hiveBox.operator(
          job: (box) async {
            final syncLog = box.values.firstWhere(
              (item) => item.deviceId == deviceId,
            );
            await box.put(syncLog.key, syncLog.copyWith(isSynced: true));
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );
}
