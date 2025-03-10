part of 'app_locale_keys.dart';

class _Validation {
  const _Validation();
  static const _prefix = 'validation';
  String get required => '$_prefix.required'.tr();
  String get minLength => '$_prefix.min_length'.tr();
  String get maxLength => '$_prefix.max_length'.tr();
  String get invalidFormat => '$_prefix.invalid_format'.tr();
  String get numeric => '$_prefix.numeric'.tr();
  String get positive => '$_prefix.positive'.tr();
  String get negative => '$_prefix.negative'.tr();
  String get email => '$_prefix.email'.tr();
  String get url => '$_prefix.url'.tr();
  String get date => '$_prefix.date'.tr();
  String get time => '$_prefix.time'.tr();
  String get dateRange => '$_prefix.date_range'.tr();
  String get timeRange => '$_prefix.time_range'.tr();
  String get passwordMatch => '$_prefix.password_match'.tr();
  String get strongPassword => '$_prefix.strong_password'.tr();
}
