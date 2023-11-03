// ignore_for_file: must_be_immutable

part of 'homepage_service_buy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageServiceBuy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageServiceBuyEvent extends Equatable {}

/// Event that is dispatched when the HomepageServiceBuy widget is first created.
class HomepageServiceBuyInitialEvent extends HomepageServiceBuyEvent {
  @override
  List<Object?> get props => [];
}
