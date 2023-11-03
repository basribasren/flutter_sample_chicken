// ignore_for_file: must_be_immutable

part of 'homepage_todays_rate_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageTodaysRate widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageTodaysRateEvent extends Equatable {}

/// Event that is dispatched when the HomepageTodaysRate widget is first created.
class HomepageTodaysRateInitialEvent extends HomepageTodaysRateEvent {
  @override
  List<Object?> get props => [];
}
