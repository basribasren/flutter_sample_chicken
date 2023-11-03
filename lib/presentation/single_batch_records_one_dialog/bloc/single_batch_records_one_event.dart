// ignore_for_file: must_be_immutable

part of 'single_batch_records_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchRecordsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchRecordsOneEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchRecordsOne widget is first created.
class SingleBatchRecordsOneInitialEvent extends SingleBatchRecordsOneEvent {
  @override
  List<Object?> get props => [];
}
