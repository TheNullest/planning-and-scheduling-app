import 'package:zamaan/domain/params/useCase_param.dart';

class DynamicParam<T> extends UseCaseParam {
  DynamicParam({required this.param, super.policy});

  final T param;
}
