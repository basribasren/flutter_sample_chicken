// ignore_for_file: must_be_immutable

part of 'single_batch_view_eggs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewEggs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewEggsEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewEggs widget is first created.
class SingleBatchViewEggsInitialEvent extends SingleBatchViewEggsEvent {
  @override
  List<Object?> get props => [];
}
