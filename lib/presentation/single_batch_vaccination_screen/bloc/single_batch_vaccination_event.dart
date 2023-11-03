// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchVaccination widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchVaccinationEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchVaccination widget is first created.
class SingleBatchVaccinationInitialEvent extends SingleBatchVaccinationEvent {
  @override
  List<Object?> get props => [];
}
