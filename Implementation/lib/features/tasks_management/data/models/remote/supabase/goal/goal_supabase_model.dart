import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'goal_supabase_model.freezed.dart';
part 'goal_supabase_model.g.dart';

@freezed
@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class GoalSupabaseModel with _$GoalSupabaseModel {
  const factory GoalSupabaseModel({
    required String id,
    required String refId,
    @JsonKey(name: 'ref_type') required String refType,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'goal_constraint') required String goalConstraint,
    @JsonKey(name: 'goal_targets') required Map<RepetitionType, dynamic> goalTargets,
    @JsonKey(name: 'measurement_unit') String? measurementUnit,
    @JsonKey(name: 'custom_measurement_unit_id') String? customMeasurementUnitId,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? description,
  }) = _GoalSupabaseModel;

  factory GoalSupabaseModel.fromEntity(GoalEntity entity) => GoalSupabaseModel(
        id: entity.id,
        refId: entity.refId,
        refType: entity.refType.name,
        customMeasurementUnitId: entity.customMeasurementUnitId,
        measurementUnit: entity.measurementUnit.name,
        userId: entity.userId,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        goalConstraint: entity.goalConstraint.name,
        goalTargets: entity.goalTargets,
      );

  factory GoalSupabaseModel.fromJson(Map<String, dynamic> json) =>
      _$GoalSupabaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GoalSupabaseModelToJson(this);
}
