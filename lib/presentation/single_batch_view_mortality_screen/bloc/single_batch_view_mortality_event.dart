// ignore_for_file: must_be_immutable

part of 'single_batch_view_mortality_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewMortality widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewMortalityEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewMortality widget is first created.
class SingleBatchViewMortalityInitialEvent
    extends SingleBatchViewMortalityEvent {
  @override
  List<Object?> get props => [];
}
