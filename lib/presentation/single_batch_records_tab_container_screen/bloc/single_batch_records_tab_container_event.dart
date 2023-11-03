// ignore_for_file: must_be_immutable

part of 'single_batch_records_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchRecordsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchRecordsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchRecordsTabContainer widget is first created.
class SingleBatchRecordsTabContainerInitialEvent
    extends SingleBatchRecordsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
