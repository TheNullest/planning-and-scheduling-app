abstract class BaseUIModel {
  BaseUIModel({
    required this.id,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  final String? id;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  BaseUIModel copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}
