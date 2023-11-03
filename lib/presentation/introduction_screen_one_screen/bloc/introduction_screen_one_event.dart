// ignore_for_file: must_be_immutable

part of 'introduction_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroductionScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroductionScreenOneEvent extends Equatable {}

/// Event that is dispatched when the IntroductionScreenOne widget is first created.
class IntroductionScreenOneInitialEvent extends IntroductionScreenOneEvent {
  @override
  List<Object?> get props => [];
}
