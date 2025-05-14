import 'package:zamaan/core/extensions/string.dart';

enum FailureType {
  validation,
  local,
  remote,
  authentication,
  unexpected;

  String get name => toString().substring(9).toSentenceCase();
}
