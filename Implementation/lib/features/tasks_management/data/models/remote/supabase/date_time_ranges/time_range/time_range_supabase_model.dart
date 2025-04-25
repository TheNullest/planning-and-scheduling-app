import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';

part 'time_range_supabase_model.freezed.dart';
part 'time_range_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class TimeRangeSupabaseModel with _$TimeRangeSupabaseModel {
  const factory TimeRangeSupabaseModel({
    required String id,
    @JsonKey(name: 'start') required String start,
    @JsonKey(name: 'end') required String end,
  }) = _TimeRangeSupabaseModel;

  factory TimeRangeSupabaseModel.fromEntity(TimeRangeEntity entity) => TimeRangeSupabaseModel(
        id: entity.id,
        start: entity.start.toFormattedString(),
        end: entity.end.toFormattedString(),
      );

  /// Creates an instance from JSON map.
  factory TimeRangeSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimeRangeSupabaseModelToJson(this);
}
