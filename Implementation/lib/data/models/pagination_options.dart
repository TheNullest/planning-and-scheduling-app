/// Pagination configuration for list operations.
class PaginationOptions {
  const PaginationOptions({
    this.limit = 100,
    this.offset = 0,
    this.fetchAll = false,
  });

  final int limit;
  final int offset;
  final bool fetchAll;
}
