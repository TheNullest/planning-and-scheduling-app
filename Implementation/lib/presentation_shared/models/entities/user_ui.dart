class UserUI {
  UserUI({
    this.id,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      UserUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
}
