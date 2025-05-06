enum VMEntityState {
  unchanged, // No modifications since last persisted state
  newEntity, // Newly created entity
  updated, // Entity has been updated
  deleted, // Entity has been marked as deleted (soft delete)
}
