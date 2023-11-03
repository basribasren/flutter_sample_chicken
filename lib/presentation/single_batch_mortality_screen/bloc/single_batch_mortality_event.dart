// ignore_for_file: must_be_immutable

part of 'single_batch_mortality_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchMortality widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchMortalityEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchMortality widget is first created.
class SingleBatchMortalityInitialEvent extends SingleBatchMortalityEvent {
  @override
  List<Object?> get props => [];
}
