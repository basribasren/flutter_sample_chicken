// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchVaccinationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchVaccinationTwoEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchVaccinationTwo widget is first created.
class SingleBatchVaccinationTwoInitialEvent
    extends SingleBatchVaccinationTwoEvent {
  @override
  List<Object?> get props => [];
}
