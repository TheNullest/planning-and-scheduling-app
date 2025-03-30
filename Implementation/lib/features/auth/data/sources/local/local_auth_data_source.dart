import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';

abstract class LocalAuthDataSource {
  EResultFuture<UserHiveModel> getCurrentUser();
  EResultFutureVoid storeCurrentUser(UserHiveModel user);
  EResultFutureVoid updateCurrentUser(UserHiveModel user);
  EResultFutureVoid signOut();
}
