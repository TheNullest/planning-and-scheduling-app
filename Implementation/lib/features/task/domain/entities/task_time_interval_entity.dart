import 'package:hive/hive.dart';
import 'package:zamaan/core/entities/base_entity_abstraction.dart';

class TaskTimeIntervalEntity extends BaseEntityAbstraction {
  @HiveField(4)
  final String mainTaskId;

  @HiveField(5)
  final String? subTaskId;

  @HiveField(6)
  final DateTime startAt;

  @HiveField(7)
  final DateTime? endAt;

  /// **Calculated Spent Time (Optional):**
  ///
  /// If `endAt` is provided, the `spentTime` field will be automatically
  /// calculated as the difference between `startAt` and `endAt`. If `endAt`
  /// is not set, `spentTime` remains null.
  @HiveField(8)
  final Duration? spentTime;

  TaskTimeIntervalEntity({
    super.id,
    super.createdAt,
    super.creatorId,
    super.description,
    required this.mainTaskId,
    required this.subTaskId,
    required this.startAt,
    this.endAt,
    this.spentTime,
  });

  /// Creates a copy of this CategoryEntity with potentially modified properties.
  TaskTimeIntervalEntity copyWith(
    String? id,
    DateTime? createdAt,
    String? creatorId,
    String? description,
    String? mainTaskId,
    String? subTaskId,
    DateTime? startAt,
    DateTime? endAt,
    Duration? spentTime,
  ) =>
      TaskTimeIntervalEntity(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        creatorId: creatorId ?? this.creatorId,
        mainTaskId: mainTaskId ?? this.mainTaskId,
        subTaskId: subTaskId ?? this.subTaskId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        spentTime: spentTime ?? this.spentTime,
      );

  @override
  List<Object?> get props => [
        id,
        createdAt,
        creatorId,
        description,
        mainTaskId,
        subTaskId,
        startAt,
        endAt,
        spentTime
      ];

  @override
  BaseEntityAbstraction fromEntity(BaseEntityAbstraction entity) {
    // TODO: implement fromEntity
    throw UnimplementedError();
  }

  @override
  BaseEntityAbstraction toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }
}