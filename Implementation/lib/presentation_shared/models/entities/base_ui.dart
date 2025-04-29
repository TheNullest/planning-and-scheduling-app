import 'package:zamaan/presentation_shared/models/entities/user_ui.dart';

abstract class BaseUIModel {
  BaseUIModel({
    this.id,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  final String? id;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final UserUI? user;

  BaseUIModel copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}
