import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/local/hive/remote_session_hive_model.dart';

abstract class LocalAuthDataSource {
  EResultFuture<RemoteSessionHiveModel?> getCurrentUser();
  EResultFutureVoid storeCurrentUser(RemoteSessionHiveModel user);
  EResultFutureVoid updateCurrentUser(RemoteSessionHiveModel user);
  EResultFutureVoid signOut();
}
