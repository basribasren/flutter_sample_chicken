// ignore_for_file: must_be_immutable

part of 'new_order_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewOrderTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewOrderTabContainerEvent extends Equatable {}

/// Event that is dispatched when the NewOrderTabContainer widget is first created.
class NewOrderTabContainerInitialEvent extends NewOrderTabContainerEvent {
  @override
  List<Object?> get props => [];
}
