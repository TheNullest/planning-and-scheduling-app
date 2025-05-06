import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

part 'scheduler_type.g.dart';

@HiveType(typeId: EnumHiveTypeIds.schedulerType)
enum SchedulerType {
  @HiveField(0)
  schedudleConstraint,

  @HiveField(1)
  scheduledDay,

  @HiveField(2)
  scheduledInterval;

  static SchedulerType fromName(String name) => SchedulerType.values.firstWhere(
        (e) => e.name.toLowerCase() == name.toLowerCase(),
        orElse: () => throw Exception('The SchedulerType "$name" is not allowed and defined'),
      );

  String get name => toString().split('.').last.toSentenceCase();
}
