// ignore_for_file: must_be_immutable

part of 'batches_sub_user_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BatchesSubUserOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BatchesSubUserOneEvent extends Equatable {}

/// Event that is dispatched when the BatchesSubUserOne widget is first created.
class BatchesSubUserOneInitialEvent extends BatchesSubUserOneEvent {
  @override
  List<Object?> get props => [];
}
