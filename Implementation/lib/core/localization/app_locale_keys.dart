import 'package:easy_localization/easy_localization.dart';

part 'ui_elements/titles.dart';
part 'ui_elements/labels.dart';
part 'ui_elements/hints.dart';
part 'ui_elements/buttons.dart';
part 'auth.dart';
part 'tasks.dart';
part 'common.dart';
part 'settings.dart';
part 'validation.dart';
part 'ui_elements/ui_elements.dart';

abstract class AppLocaleKeys {
  const AppLocaleKeys._();
static const uiElements = _UiElements();
  static const auth = _Auth();
  static const tasks = _Tasks();
  static const common = _Common();
  static const settings = _Settings();
  static const validation = _Validation();
}
