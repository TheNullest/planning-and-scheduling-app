import 'package:hive/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

part 'remote_session_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.remoteSession) // Unique Type ID for Hive
class RemoteSessionHiveModel {
  RemoteSessionHiveModel({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAt,
    required this.userId,
  });
  factory RemoteSessionHiveModel.fromAuthSession(AuthResponse session) {
    return RemoteSessionHiveModel(
      userId: session.user!.id,
      accessToken: session.session!.accessToken,
      refreshToken: session.session!.refreshToken!,
      expiresAt: session.session!.expiresAt!,
    );
  }

  @HiveField(0)
  final String userId;
  @HiveField(1)
  final String accessToken;
  @HiveField(2)
  final String refreshToken;
  @HiveField(3)
  final int expiresAt;

  /// Converts [expiresAt] (seconds since epoch) to [DateTime]
  DateTime get expiresAtDateTime => DateTime.fromMillisecondsSinceEpoch(expiresAt * 1000);
}
