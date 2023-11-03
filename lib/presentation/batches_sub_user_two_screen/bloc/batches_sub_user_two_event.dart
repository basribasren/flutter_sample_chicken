// ignore_for_file: must_be_immutable

part of 'batches_sub_user_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BatchesSubUserTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BatchesSubUserTwoEvent extends Equatable {}

/// Event that is dispatched when the BatchesSubUserTwo widget is first created.
class BatchesSubUserTwoInitialEvent extends BatchesSubUserTwoEvent {
  @override
  List<Object?> get props => [];
}
