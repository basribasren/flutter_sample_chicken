// ignore_for_file: must_be_immutable

part of 'homepage_sell_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageSellTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageSellTwoEvent extends Equatable {}

/// Event that is dispatched when the HomepageSellTwo widget is first created.
class HomepageSellTwoInitialEvent extends HomepageSellTwoEvent {
  @override
  List<Object?> get props => [];
}
