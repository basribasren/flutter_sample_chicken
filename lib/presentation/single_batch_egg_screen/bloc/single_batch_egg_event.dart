// ignore_for_file: must_be_immutable

part of 'single_batch_egg_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchEgg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchEggEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchEgg widget is first created.
class SingleBatchEggInitialEvent extends SingleBatchEggEvent {
  @override
  List<Object?> get props => [];
}
