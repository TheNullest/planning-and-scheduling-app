import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/hive/sync_action.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';

part 'log.freezed.dart';
part 'log.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class LogSupabaseModel with _$LogSupabaseModel {
  const factory LogSupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'entity_id') required String entityId,
    required String action,
    required DataMap data,
    @JsonKey(name: 'recorded_at') required String recorededAt,
    @JsonKey(name: 'is_synced') required bool isSynced,
  }) = _LogSupabaseModel;

  factory LogSupabaseModel.fromJson(Map<String, dynamic> json) => _$LogSupabaseModelFromJson(json);

  factory LogSupabaseModel.empty() => LogSupabaseModel.fromEntity(LogEntity.empty());

  factory LogSupabaseModel.fromEntity(LogEntity entity) => LogSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        deviceId: entity.deviceId,
        entityId: entity.entityId,
        action: entity.action.name,
        data: entity.data,
        recorededAt: entity.recordedAt.toIso8601String(),
        isSynced: entity.isSynced,
      );

  @override
  Map<String, dynamic> toJson() => _$LogSupabaseModelToJson(this);
}

extension LogSupabaseModelX on LogSupabaseModel {
  LogEntity toEntity() {
    return LogEntity(
      id: id,
      userId: userId,
      deviceId: deviceId,
      entityId: entityId,
      action: SyncAction.fromName(action),
      data: data,
      recordedAt: DateTime.parse(recorededAt),
      isSynced: isSynced,
    );
  }
}
