// ignore_for_file: must_be_immutable

part of 'homepage_service_buy_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageServiceBuyOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageServiceBuyOneEvent extends Equatable {}

/// Event that is dispatched when the HomepageServiceBuyOne widget is first created.
class HomepageServiceBuyOneInitialEvent extends HomepageServiceBuyOneEvent {
  @override
  List<Object?> get props => [];
}
