abstract class BaseUIModel {
  BaseUIModel({
    this.id,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.userId,
  });

  final String? id;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? userId;

  BaseUIModel copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
  });
}
