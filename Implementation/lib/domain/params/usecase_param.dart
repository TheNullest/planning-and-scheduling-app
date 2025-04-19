import 'package:zamaan/core/enums/datasource_policy.dart';

class UsecaseParam {
  UsecaseParam({this.policy = DataSourcePolicy.both});

  final DataSourcePolicy policy;
}
