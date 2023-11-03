// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchVaccinationFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchVaccinationFourEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchVaccinationFour widget is first created.
class SingleBatchVaccinationFourInitialEvent
    extends SingleBatchVaccinationFourEvent {
  @override
  List<Object?> get props => [];
}
