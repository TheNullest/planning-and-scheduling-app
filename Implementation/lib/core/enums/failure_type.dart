enum FailureType {
  validation,
  local,
  remote,
  authentication,
  unexpected;

  @override
  String toString() {
    switch (this) {
      case FailureType.validation:
        return 'validation';
      case FailureType.local:
        return 'local';
      case FailureType.remote:
        return 'remote';
      case FailureType.authentication:
        return 'authentication';
      case FailureType.unexpected:
        return 'unexpected';
    }
  }
}
