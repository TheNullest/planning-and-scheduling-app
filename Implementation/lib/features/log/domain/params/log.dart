class LogParams {
  LogParams({
    required this.logIds,
    required this.userId,
    this.fromLocal = true,
    this.fromDate,
  });

  final List<String> logIds;
  final String userId;
  final bool? fromLocal;
  final DateTime? fromDate;
}
