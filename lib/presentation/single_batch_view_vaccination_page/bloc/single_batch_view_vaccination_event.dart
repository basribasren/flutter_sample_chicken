// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewVaccination widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewVaccinationEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewVaccination widget is first created.
class SingleBatchViewVaccinationInitialEvent
    extends SingleBatchViewVaccinationEvent {
  @override
  List<Object?> get props => [];
}
