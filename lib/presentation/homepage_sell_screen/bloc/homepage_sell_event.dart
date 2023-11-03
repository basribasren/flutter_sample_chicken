// ignore_for_file: must_be_immutable

part of 'homepage_sell_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageSell widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageSellEvent extends Equatable {}

/// Event that is dispatched when the HomepageSell widget is first created.
class HomepageSellInitialEvent extends HomepageSellEvent {
  @override
  List<Object?> get props => [];
}
