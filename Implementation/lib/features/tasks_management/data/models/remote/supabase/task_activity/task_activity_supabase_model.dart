import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/task_activity.dart';

part 'task_activity_supabase_model.freezed.dart';
part 'task_activity_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class TaskActivitySupabaseModel with _$TaskActivitySupabaseModel {
  const factory TaskActivitySupabaseModel({
    @JsonKey(name: 'main_task_id') required String taskId,
    @JsonKey(name: 'sub_task_id') required String subTaskId,
    @JsonKey(name: 'start_at') required DateTime startAt,
    required String? id,
    @JsonKey(defaultValue: false, name: 'is_paused') required bool isPaused,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'task_scheduler_id') String? taskSchedulerId,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(
      name: 'spent_time',
      fromJson: _durationFromJson,
      toJson: _durationToJson,
    )
    Duration? spentTime,
  }) = _TaskActivitySupabaseModel;

  /// Creates a [TaskActivitySupabaseModel] from a JSON map.
  factory TaskActivitySupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskActivitySupabaseModelFromJson(json);

  /// Converts a [TaskActivityEntity] (domain entity) into a [TaskActivitySupabaseModel].
  factory TaskActivitySupabaseModel.fromEntity(TaskActivityEntity entity) =>
      TaskActivitySupabaseModel(
        taskId: entity.taskId,
        subTaskId: entity.subTaskId,
        startAt: entity.startAt,
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        dueDate: entity.dueDate,
        spentTime: entity.spentTime,
        isPaused: entity.isPaused,
        taskSchedulerId: entity.taskSchedulerId,
      );

  @override
  Map<String, dynamic> toJson() => _$TaskActivitySupabaseModelToJson(this);
}

/// Converts a JSON value into a [Duration].
///
/// If the value is an integer, it is treated as the total number of seconds.
/// If the value is a String (e.g. "2 days 3 hours 30 minutes"), it is parsed accordingly.
Duration? _durationFromJson(dynamic value) {
  if (value == null) return null;
  if (value is int) return Duration(seconds: value);
  if (value is String) return _parseIntervalToDuration(value);
  throw Exception('Unsupported format for spentTime: $value');
}

/// Converts a [Duration] into a JSON value.
///
/// In this example, we simply use the total seconds.
dynamic _durationToJson(Duration? duration) {
  if (duration == null) return null;
  return duration.inSeconds;
}

/// Parses an interval string (e.g. "2 days 3 hours 30 minutes")
/// and returns a [Duration] representing the total time.
Duration _parseIntervalToDuration(String interval) {
  // The regular expression looks for days, hours, minutes, and seconds.
  final regExp = RegExp(
    r'(?:(\d+)\s*days?)|(?:(\d+)\s*hours?)|(?:(\d+)\s*minutes?)|(?:(\d+)\s*seconds?)',
    caseSensitive: false,
  );

  var totalSeconds = 0;

  // Process each match found in the interval string.
  final matches = regExp.allMatches(interval);
  for (final match in matches) {
    // Group 1: Days
    if (match.group(1) != null) {
      totalSeconds += int.parse(match.group(1)!) * 86400; // 1 day = 86400 seconds
    }
    // Group 2: Hours
    if (match.group(2) != null) {
      totalSeconds += int.parse(match.group(2)!) * 3600; // 1 hour = 3600 seconds
    }
    // Group 3: Minutes
    if (match.group(3) != null) {
      totalSeconds += int.parse(match.group(3)!) * 60; // 1 minute = 60 seconds
    }
    // Group 4: Seconds
    if (match.group(4) != null) {
      totalSeconds += int.parse(match.group(4)!);
    }
  }

  return Duration(seconds: totalSeconds);
}
