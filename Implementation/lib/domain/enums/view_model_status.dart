enum ViewModelStatus {
  creatable, // Can create
  locked, // Uneditable
  unlocked, // Can update
  changed, // Any modifications since last persisted state
  inValid, // Can't do anything
}
