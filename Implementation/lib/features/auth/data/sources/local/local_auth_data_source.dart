import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';

abstract class LocalAuthDataSource {
  ResultFuture<UserHiveModel> getCurrentUser();
  ResultFutureVoid storeCurrentUser(UserHiveModel user);
  ResultFutureVoid updateCurrentUser(UserHiveModel user);
  ResultFutureVoid signOut();
}
