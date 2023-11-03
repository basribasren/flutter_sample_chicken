// ignore_for_file: must_be_immutable

part of 'batches_sub_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BatchesSubUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BatchesSubUserEvent extends Equatable {}

/// Event that is dispatched when the BatchesSubUser widget is first created.
class BatchesSubUserInitialEvent extends BatchesSubUserEvent {
  @override
  List<Object?> get props => [];
}
