/// Sorting configuration for list operations.
class SortingOption {
  const SortingOption({
    required this.field,
    this.ascending = false,
  });

  final String field;
  final bool ascending;
}
