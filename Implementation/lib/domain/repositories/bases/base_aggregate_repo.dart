import 'package:zamaan/core/utils/typedef.dart';

abstract class BaseAggregateRepository<Aggregate> {
  EResultFuture<Aggregate> getById(String aggregateId);
  EResultFuture<List<Aggregate>> getBatchByIds(List<String> aggregateIds);
  EResultFuture<List<Aggregate>> getBatch();
  EResultFutureVoid cascadeDelete(String aggregateId);
  EResultFutureVoid batchCascadeDelete(List<String> aggregateIds);
}
