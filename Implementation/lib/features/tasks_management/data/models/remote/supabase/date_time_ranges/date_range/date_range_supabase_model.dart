import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';

part 'date_range_supabase_model.freezed.dart';
part 'date_range_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class DateRangeSupabaseModel with _$DateRangeSupabaseModel {
  const factory DateRangeSupabaseModel({
    required String id,
    @JsonKey(name: 'start') DateTime? start,
    @JsonKey(name: 'end') DateTime? end,
  }) = _DateRangeSupabaseModel;

  factory DateRangeSupabaseModel.fromEntity(DateRangeEntity entity) => DateRangeSupabaseModel(
        id: entity.id,
        start: entity.start,
        end: entity.end,
      );

  /// Creates an instance from JSON map.
  factory DateRangeSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$DateRangeSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DateRangeSupabaseModelToJson(this);
}
