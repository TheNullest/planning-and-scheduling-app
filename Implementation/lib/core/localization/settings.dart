part of 'app_locale_keys.dart';

class _Settings {
  const _Settings();
  static const _prefix = 'settings';
  String get account => '$_prefix.account'.tr();
  String get notifications => '$_prefix.notifications'.tr();
  String get theme => '$_prefix.theme'.tr();
  String get language => '$_prefix.language'.tr();
  String get help => '$_prefix.help'.tr();
  String get about => '$_prefix.about'.tr();
  String get optionsLightTheme => '$_prefix.options.light_theme'.tr();
  String get optionsDarkTheme => '$_prefix.options.dark_theme'.tr();
  String get optionsSystemTheme => '$_prefix.options.system_theme'.tr();
}
