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
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'parent_id') required String parentId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'start_at') DateTime? start,
    @JsonKey(name: 'end_at') DateTime? end,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _DateRangeSupabaseModel;

  factory DateRangeSupabaseModel.fromEntity(DateRangeEntity entity) => DateRangeSupabaseModel(
        id: entity.id,
        userId: entity.userId,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        start: entity.start,
        end: entity.end,
        parentId: entity.parentId,
      );

  factory DateRangeSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$DateRangeSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DateRangeSupabaseModelToJson(this);
}
