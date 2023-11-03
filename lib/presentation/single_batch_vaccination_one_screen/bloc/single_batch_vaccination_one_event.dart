// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchVaccinationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchVaccinationOneEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchVaccinationOne widget is first created.
class SingleBatchVaccinationOneInitialEvent
    extends SingleBatchVaccinationOneEvent {
  @override
  List<Object?> get props => [];
}
