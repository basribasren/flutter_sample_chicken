// ignore_for_file: must_be_immutable

part of 'single_batch_reports_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchReports widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchReportsEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchReports widget is first created.
class SingleBatchReportsInitialEvent extends SingleBatchReportsEvent {
  @override
  List<Object?> get props => [];
}
