// filter_operator.dart
enum FilterOperator {
  equals('eq'),
  notEquals('neq'),
  greaterThan('gt'),
  lessThan('lt'),
  greaterThanOrEqual('gte'),
  lessThanOrEqual('lte'),
  like('like'),
  ilike('ilike'),
  inList('in'),
  contains('cs'),
  containsAny('cd'),
  isNull('is'),
  isNotNull('not.is');

  const FilterOperator(this.symbol);
  final String symbol;
}

enum LogicalOperator { and, or }
