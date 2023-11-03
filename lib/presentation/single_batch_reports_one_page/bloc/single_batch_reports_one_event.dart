// ignore_for_file: must_be_immutable

part of 'single_batch_reports_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchReportsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchReportsOneEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchReportsOne widget is first created.
class SingleBatchReportsOneInitialEvent extends SingleBatchReportsOneEvent {
  @override
  List<Object?> get props => [];
}
