// ignore_for_file: must_be_immutable

part of 'reports_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportsTwoEvent extends Equatable {}

/// Event that is dispatched when the ReportsTwo widget is first created.
class ReportsTwoInitialEvent extends ReportsTwoEvent {
  @override
  List<Object?> get props => [];
}
