import 'package:zamaan/domain/params/dynamic_params.dart';

class IdsAndDateRangeParams extends UsecaseParams {
  IdsAndDateRangeParams({
    required this.taskIds,
    required this.startAt,
    required this.dueDate,
    super.param,
    super.fromLocal,
    super.fromRemote,
  });

  final List<String> taskIds;
  final DateTime? startAt;
  final DateTime? dueDate;
}
