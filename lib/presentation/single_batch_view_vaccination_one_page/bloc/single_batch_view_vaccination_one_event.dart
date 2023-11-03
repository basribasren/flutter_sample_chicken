// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewVaccinationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewVaccinationOneEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewVaccinationOne widget is first created.
class SingleBatchViewVaccinationOneInitialEvent
    extends SingleBatchViewVaccinationOneEvent {
  @override
  List<Object?> get props => [];
}
