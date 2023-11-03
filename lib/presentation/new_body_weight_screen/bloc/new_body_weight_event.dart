// ignore_for_file: must_be_immutable

part of 'new_body_weight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewBodyWeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewBodyWeightEvent extends Equatable {}

/// Event that is dispatched when the NewBodyWeight widget is first created.
class NewBodyWeightInitialEvent extends NewBodyWeightEvent {
  @override
  List<Object?> get props => [];
}
