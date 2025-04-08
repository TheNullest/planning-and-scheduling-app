enum SyncAction {
  create,
  update,
  delete;

  static SyncAction fromName(String name) {
    return SyncAction.values.firstWhere(
      (e) => e.name == name,
      orElse: () => SyncAction.create,
    );
  }
}
