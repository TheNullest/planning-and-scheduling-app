import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/auth/data/models/remote/supabase/user_supabase_model.dart';
import 'package:zamaan/features/auth/domain/params/change_passwrod_params.dart';
import 'package:zamaan/features/auth/domain/params/user_signin_params.dart';

abstract class RemoteAuthDataSource {
  Session? get currentUserSession;

  EResultFuture<AuthResponse> setSession();
  EResultFutureVoid restoreSession();
  EResultFuture<Session?> listenAuthChanges();
  EResultFuture<UserSupabaseModel> getCurrentUser();
  EResultFuture<UserSupabaseModel> signUp(UserSupabaseModel userModel);
  EResultFuture<UserSupabaseModel> signIn(UserSignInParams params);
  EResultFuture<UserSupabaseModel> updateUser(UserSupabaseModel entity);
  EResultFutureVoid changePassword(ChangePasswordParams params);
  EResultFutureVoid resetPassword(String email);
  EResultFuture<bool> deleteUserAccount(UserSignInParams params);
  EResultFuture<bool> signOut();
}
