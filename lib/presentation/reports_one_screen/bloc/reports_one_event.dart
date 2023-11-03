// ignore_for_file: must_be_immutable

part of 'reports_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportsOneEvent extends Equatable {}

/// Event that is dispatched when the ReportsOne widget is first created.
class ReportsOneInitialEvent extends ReportsOneEvent {
  @override
  List<Object?> get props => [];
}
