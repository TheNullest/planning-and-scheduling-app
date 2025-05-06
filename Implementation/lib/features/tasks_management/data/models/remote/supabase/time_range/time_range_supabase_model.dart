import 'package:freezed_annotation/freezed_annotation.dart';
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
    @JsonKey(name: 'parent_id') required String parentId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'start_time') required int start,
    @JsonKey(name: 'end_time') required int end,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TimeRangeSupabaseModel;

  factory TimeRangeSupabaseModel.fromEntity(TimeRangeEntity entity) => TimeRangeSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        start: entity.start,
        end: entity.end,
        parentId: entity.parentId,
      );

  factory TimeRangeSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimeRangeSupabaseModelToJson(this);
}
