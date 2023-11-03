// ignore_for_file: must_be_immutable

part of 'single_batch_analysis_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchAnalysis widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchAnalysisEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchAnalysis widget is first created.
class SingleBatchAnalysisInitialEvent extends SingleBatchAnalysisEvent {
  @override
  List<Object?> get props => [];
}
