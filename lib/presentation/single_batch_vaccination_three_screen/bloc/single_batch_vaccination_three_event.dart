// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchVaccinationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchVaccinationThreeEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchVaccinationThree widget is first created.
class SingleBatchVaccinationThreeInitialEvent
    extends SingleBatchVaccinationThreeEvent {
  @override
  List<Object?> get props => [];
}
