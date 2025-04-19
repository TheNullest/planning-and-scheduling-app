import 'package:zamaan/domain/params/usecase_param.dart';

class DynamicParam<T> extends UsecaseParam {
  DynamicParam({required this.param, super.policy});

  final T param;
}
