// ignore_for_file: must_be_immutable

part of 'introduction_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Introduction widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroductionEvent extends Equatable {}

/// Event that is dispatched when the Introduction widget is first created.
class IntroductionInitialEvent extends IntroductionEvent {
  @override
  List<Object?> get props => [];
}
