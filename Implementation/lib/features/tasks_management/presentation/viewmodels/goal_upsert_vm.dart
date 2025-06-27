import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/enums/hive/goal_constraint.dart';
import 'package:zamaan/domain/enums/hive/measurement_unit.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/repetition_type.dart';
import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class GoalUpsertVM extends BaseViewModel<GoalEntity> {
  GoalUpsertVM({
    required super.userId,
    required this.refType,
    required this.refId,
  }) : super(viewModelTitle: 'Goal');

  GoalUpsertVM.fromEntity({
    required super.entity,
  }) : super(userId: entity!.userId, viewModelTitle: 'Goal');

  late ReferenceType refType;
  late String refId;

  @override
  void initialize([GoalEntity? entity]) {
    originalValues.clear();

    if (entity != null) {
      addToOriginalValues<MeasurementUnit>(#measurementUnit, entity.measurementUnit);
      addToOriginalValues<String?>(#customMeasurementUnitId, entity.customMeasurementUnitId);
      addToOriginalValues<GoalConstraint>(#goalConstraint, entity.goalConstraint);
      addToOriginalValues<Map<RepetitionType, dynamic>>(#goalTargets, Map.from(entity.goalTargets));

      refType = entity.refType;
      refId = entity.refId;
    } else {
      addToOriginalValues<String>(#description, '');
      addToOriginalValues<MeasurementUnit>(#measurementUnit, MeasurementUnit.minute);
      addToOriginalValues<String?>(#customMeasurementUnitId, null);
      addToOriginalValues<GoalConstraint>(#goalConstraint, GoalConstraint.step);
      addToOriginalValues<Map<RepetitionType, dynamic>>(#goalTargets, {});
    }
    _customMeasurementUnitId = getOriginalValue<String?>(#customMeasurementUnitId);
    _measurementUnit = getOriginalValue<MeasurementUnit>(#measurementUnit);
    _goalConstraint = getOriginalValue<GoalConstraint>(#goalConstraint);
    _goalTargets = Map.from(getOriginalValue<Map<RepetitionType, dynamic>>(#goalTargets));
    super.initialize(entity);
  }

  late MeasurementUnit _measurementUnit;
  MeasurementUnit get measurementUnit => _measurementUnit;
  set measurementUnit(MeasurementUnit value) {
    _measurementUnit = value;
    processModification(#measurementUnit, value);
  }

  late String? _customMeasurementUnitId;
  String? get customMeasurementUnitId => _customMeasurementUnitId;
  set customMeasurementUnitId(String? value) {
    _customMeasurementUnitId = value;
    processModification(#customMeasurementUnitId, value);
  }

  late GoalConstraint _goalConstraint;
  GoalConstraint get goalConstraint => _goalConstraint;
  set goalConstraint(GoalConstraint value) {
    _goalConstraint = value;
    processModification(#goalConstraint, value);
  }

  late Map<RepetitionType, dynamic> _goalTargets;
  Map<RepetitionType, dynamic> get goalTargets => _goalTargets;
  void addTarget(RepetitionType key, dynamic value) {
    //✔️ Effect:
    //If type exists: value is replaced
    //If type doesn't exist: new key-value pair is added
    //✅ Use when:
    //You want a simple assignment
    //You're okay with inserting a new key if it's not there

    // _goalTargets.update(key, (_) => value);
    //✔️ Process modification
    // If type doesn't exist, this will throw a StateError
    // If type exists, it updates the value
    //✅ Use when:
    //You only want to update existing keys
    //You want to avoid adding new keys accidentally
    //You want to handle missing keys safely like this:
    _goalTargets[key] = value;
    processModification(#goalTargets, _goalTargets);
  }

  void removeTarget(RepetitionType key) {
    _goalTargets.remove(key);
    processModification(#goalTargets, _goalTargets);
  }

  @override
  GoalEntity get toEntity => GoalEntity(
      id: getOriginalValue<String?>(#id),
      userId: userId,
      createdAt: getCreatedAt,
      updatedAt: getUpdatedAt,
      refType: refType,
      refId: refId,
      customMeasurementUnitId: customMeasurementUnitId,
      description: description,
      measurementUnit: measurementUnit,
      goalConstraint: goalConstraint,
      goalTargets: goalTargets);

  @override
  bool get isValid {
    return description.trim().isNotEmpty;
  }

  @override
  void resetValues() {
    _measurementUnit = getOriginalValue<MeasurementUnit>(#measurementUnit);
    _customMeasurementUnitId = getOriginalValue<String?>(#customMeasurementUnitId);
    _goalConstraint = getOriginalValue<GoalConstraint>(#goalConstraint);
    _goalTargets = Map.from(getOriginalValue<Map<RepetitionType, dynamic>>(#goalTargets));
    super.resetValues();
  }
}
