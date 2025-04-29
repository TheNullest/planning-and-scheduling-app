import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'scheduler_type.g.dart';

@HiveType(typeId: EnumHiveTypeIds.schedulerType)
enum SchedulerType {
  @HiveField(0)
  schedudleDefinition,

  @HiveField(1)
  scheduleDay,

  @HiveField(2)
  scheduleInterval;

  static SchedulerType fromName(String name) => SchedulerType.values.firstWhere(
        (e) => e.name.toLowerCase() == name.toLowerCase(),
        orElse: () => throw Exception('The SchedulerType "$name" is not allowed and defined'),
      );

  String get name => toString().split('.').last.toSentenceCase();
}
