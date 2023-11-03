// ignore_for_file: must_be_immutable

part of 'new_eggs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewEggs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewEggsEvent extends Equatable {}

/// Event that is dispatched when the NewEggs widget is first created.
class NewEggsInitialEvent extends NewEggsEvent {
  @override
  List<Object?> get props => [];
}
