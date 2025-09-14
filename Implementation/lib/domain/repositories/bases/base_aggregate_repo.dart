import 'package:zamaan/core/utils/typedef.dart';

abstract class BaseAggregateRepository<Aggregate> {
  EResultFuture<Aggregate> getById(String aggregateId);
  EResultFuture<List<Aggregate>> getByIds(List<String> aggregateIds);
  EResultFuture<List<Aggregate>> get();
  EResultFutureVoid cascadeDelete(String aggregateId);
  EResultFutureVoid batchCascadeDelete(List<String> aggregateIds);
}
