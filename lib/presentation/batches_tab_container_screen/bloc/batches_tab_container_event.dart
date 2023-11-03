// ignore_for_file: must_be_immutable

part of 'batches_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BatchesTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BatchesTabContainerEvent extends Equatable {}

/// Event that is dispatched when the BatchesTabContainer widget is first created.
class BatchesTabContainerInitialEvent extends BatchesTabContainerEvent {
  @override
  List<Object?> get props => [];
}
