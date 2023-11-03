// ignore_for_file: must_be_immutable

part of 'homepage_todays_rate_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageTodaysRateOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageTodaysRateOneEvent extends Equatable {}

/// Event that is dispatched when the HomepageTodaysRateOne widget is first created.
class HomepageTodaysRateOneInitialEvent extends HomepageTodaysRateOneEvent {
  @override
  List<Object?> get props => [];
}
