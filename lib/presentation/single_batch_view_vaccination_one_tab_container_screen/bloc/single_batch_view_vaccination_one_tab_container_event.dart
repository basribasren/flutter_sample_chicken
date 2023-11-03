// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewVaccinationOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewVaccinationOneTabContainerEvent
    extends Equatable {}

/// Event that is dispatched when the SingleBatchViewVaccinationOneTabContainer widget is first created.
class SingleBatchViewVaccinationOneTabContainerInitialEvent
    extends SingleBatchViewVaccinationOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
