part of 'app_locale_keys.dart';

class _Auth {
  const _Auth();
  _AuthCta get cta => const _AuthCta();
  _AuthValidation get validation => const _AuthValidation();
  _AuthMessages get messages => const _AuthMessages();
  _AuthErrors get errors => const _AuthErrors();
}

class _AuthCta {
  const _AuthCta();
  static const _prefix = 'auth.cta';
  String get dontHaveAccount => '$_prefix.dont_have_account'.tr();
  String get haveAccount => '$_prefix.have_account'.tr();
  String get continueWithGoogle => '$_prefix.continue_with_google'.tr();
  String get continueWithApple => '$_prefix.continue_with_apple'.tr();
}

class _AuthValidation {
  const _AuthValidation();
  static const _prefix = 'auth.validation';
  String get emailRequired => '$_prefix.email_required'.tr();
  String get invalidEmail => '$_prefix.invalid_email'.tr();
  String get passwordLength => '$_prefix.password_length'.tr();
  String get passwordMatch => '$_prefix.password_match'.tr();
}

class _AuthMessages {
  const _AuthMessages();
  static const _prefix = 'auth.messages';
  String get resetPasswordSuccess => '$_prefix.reset_password_success'.tr();
  String get signupSuccess => '$_prefix.signup_success'.tr();
  String get confirmationSent => '$_prefix.confirmation_sent'.tr();
  String get welcomeBack => '$_prefix.welcome_back'.tr();
}

class _AuthErrors {
  const _AuthErrors();
  static const _prefix = 'auth.errors';
  String get noInternet => '$_prefix.no_internet'.tr();
  String get userExists => '$_prefix.user_exists'.tr();
  String get invalidCredentials => '$_prefix.invalid_credentials'.tr();
  String get weakPassword => '$_prefix.weak_password'.tr();
  String get requiresRecentLogin => '$_prefix.requires_recent_login'.tr();
}
