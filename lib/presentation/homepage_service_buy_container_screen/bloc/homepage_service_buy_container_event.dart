// ignore_for_file: must_be_immutable

part of 'homepage_service_buy_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageServiceBuyContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageServiceBuyContainerEvent extends Equatable {}

/// Event that is dispatched when the HomepageServiceBuyContainer widget is first created.
class HomepageServiceBuyContainerInitialEvent
    extends HomepageServiceBuyContainerEvent {
  @override
  List<Object?> get props => [];
}
