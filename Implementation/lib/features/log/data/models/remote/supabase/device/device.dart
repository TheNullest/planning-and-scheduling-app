import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/enums/os.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class DeviceSupabaseModel with _$DeviceSupabaseModel {
  const factory DeviceSupabaseModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String os,
    @JsonKey(name: 'os_version') required String osVersion,
    @JsonKey(name: 'app_version') required String appVersion,
    required String manufacturer,
    required String model,
    @JsonKey(name: 'registered_at') required DateTime registeredAt,
    @JsonKey(name: 'last_active') required DateTime lastActive,
  }) = _DeviceSupbaseModel;

  factory DeviceSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceSupabaseModelFromJson(json);

  factory DeviceSupabaseModel.empty() =>
      DeviceSupabaseModel.fromEntity(DeviceEntity.empty());

  factory DeviceSupabaseModel.fromEntity(DeviceEntity entity) =>
      DeviceSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        os: entity.os.name,
        osVersion: entity.osVersion,
        appVersion: entity.appVersion,
        manufacturer: entity.manufacturer,
        model: entity.model,
        registeredAt: entity.registeredAt,
        lastActive: entity.lastActive,
      );

  @override
  Map<String, dynamic> toJson() => _$DeviceSupabaseModelToJson(this);

  // DeviceEntity toEntity() {
  //   return DeviceEntity(
  //     id: id,
  //     userId: userId,
  //     os: OS.fromName(os),
  //     osVersion: osVersion,
  //     appVersion: appVersion,
  //     manufacturer: manufacturer,
  //     model: model,
  //     createdAt: createdAt ?? DateTime.now(),
  //     lastActive: lastActive ?? DateTime.now(),
  //   );
  // }
}

extension DeviceSupabaseModelX on DeviceSupabaseModel {
  DeviceEntity toEntity() {
    return DeviceEntity(
      id: id,
      userId: userId,
      os: OS.fromName(os),
      osVersion: osVersion,
      appVersion: appVersion,
      manufacturer: manufacturer,
      model: model,
      registeredAt: registeredAt,
      lastActive: lastActive,
    );
  }
}
