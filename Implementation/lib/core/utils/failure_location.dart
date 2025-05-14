import 'package:stack_trace/stack_trace.dart';

String getFailureLocation(StackTrace stackTrace) {
  try {
    final chain = Chain.forTrace(stackTrace);
    // Get the first relevant frame (skip framework/internal calls)
    final frame = chain.traces.first.frames.firstWhere(
      (frame) => frame.uri.toString().contains('zamaan'),
      orElse: () => chain.traces.first.frames.first,
    );
    return '${frame.uri} - ${frame.member} (line ${frame.line})';
  } on Exception catch (_) {
    return 'Unknown location';
  }
}
