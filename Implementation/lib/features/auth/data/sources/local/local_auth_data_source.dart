import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/local/hive/remote_session_hive_model.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';

abstract class LocalAuthDataSource {
  EResultFuture<RemoteSessionHiveModel> getSession();
  EResultFuture<UserHiveModel> getUser();
  EResultFutureVoid storeUser(UserHiveModel user);
  EResultFutureVoid storeSession(RemoteSessionHiveModel session);
  EResultFutureVoid updateUser(UserHiveModel user);
  EResultFutureVoid updateSession(RemoteSessionHiveModel session);
  EResultFutureVoid signOut();
}
