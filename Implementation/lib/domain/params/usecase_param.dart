import 'package:zamaan/domain/enums/datasource_policy.dart';

class UseCaseParam {
  UseCaseParam({this.policy = DataSourcePolicy.both});

  final DataSourcePolicy policy;
}
