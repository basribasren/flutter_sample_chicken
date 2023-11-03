// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewVaccinationTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewVaccinationTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewVaccinationTabContainer widget is first created.
class SingleBatchViewVaccinationTabContainerInitialEvent
    extends SingleBatchViewVaccinationTabContainerEvent {
  @override
  List<Object?> get props => [];
}
