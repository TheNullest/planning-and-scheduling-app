import 'package:hive/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';

part 'remote_session_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.remoteSession) // Unique Type ID for Hive
class RemoteSessionHiveModel {
  RemoteSessionHiveModel({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAt,
    required this.user,
  });
  factory RemoteSessionHiveModel.fromAuthSession(AuthResponse session, UserHiveModel user) {
    return RemoteSessionHiveModel(
      accessToken: session.session!.accessToken,
      refreshToken: session.session!.refreshToken!,
      expiresAt: session.session!.expiresAt!,
      user: user,
    );
  }

  @HiveField(0)
  final String accessToken;
  @HiveField(1)
  final String refreshToken;
  @HiveField(2)
  final int expiresAt;
  @HiveField(3)
  final UserHiveModel user;

  /// Converts [expiresAt] (seconds since epoch) to [DateTime]
  DateTime get expiresAtDateTime => DateTime.fromMillisecondsSinceEpoch(expiresAt * 1000);
}
