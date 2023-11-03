// ignore_for_file: must_be_immutable

part of 'new_mortality_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewMortality widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewMortalityEvent extends Equatable {}

/// Event that is dispatched when the NewMortality widget is first created.
class NewMortalityInitialEvent extends NewMortalityEvent {
  @override
  List<Object?> get props => [];
}
