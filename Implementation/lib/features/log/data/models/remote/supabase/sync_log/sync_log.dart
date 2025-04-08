import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';

part 'sync_log.freezed.dart';
part 'sync_log.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class SyncLogSupabaseModel with _$SyncLogSupabaseModel {
  const factory SyncLogSupabaseModel({
    required String id,
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'sync_log_id') required String syncLogId,
    @JsonKey(name: 'is_synced') bool? isSynced,
    @JsonKey(name: 'synced_at') DateTime? syncedAt,
  }) = _SyncLogSupabaseModel;

  factory SyncLogSupabaseModel.fromEntity(
    SyncLogEntity entity,
  ) =>
      SyncLogSupabaseModel(
        id: entity.id,
        deviceId: entity.deviceId,
        userId: entity.userId,
        syncLogId: entity.syncLogId,
        isSynced: entity.isSynced,
        syncedAt: entity.syncedAt,
      );

  factory SyncLogSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$SyncLogSupabaseModelFromJson(json);

  factory SyncLogSupabaseModel.empty() =>
      SyncLogSupabaseModel.fromEntity(SyncLogEntity.empty());

  @override
  Map<String, dynamic> toJson() => _$SyncLogSupabaseModelToJson(this);
}

extension SyncLogSupabaseModelX on SyncLogSupabaseModel {
  SyncLogEntity toEntity() {
    return SyncLogEntity(
      id: id,
      deviceId: deviceId,
      userId: userId,
      syncLogId: syncLogId,
      isSynced: isSynced ?? false,
      syncedAt: syncedAt,
    );
  }
}
