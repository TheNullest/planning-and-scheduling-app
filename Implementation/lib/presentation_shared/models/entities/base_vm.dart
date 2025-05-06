import 'package:zamaan/domain/enums/ui_entity_state.dart';

abstract class BaseViewModel {
  BaseViewModel({
    this.id,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.entityState = VMEntityState.unchanged,
  });

  final String? id;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? userId;
  final VMEntityState entityState;

  BaseViewModel copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
  });
}
