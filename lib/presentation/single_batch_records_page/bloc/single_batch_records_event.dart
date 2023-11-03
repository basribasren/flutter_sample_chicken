// ignore_for_file: must_be_immutable

part of 'single_batch_records_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchRecords widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchRecordsEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchRecords widget is first created.
class SingleBatchRecordsInitialEvent extends SingleBatchRecordsEvent {
  @override
  List<Object?> get props => [];
}
