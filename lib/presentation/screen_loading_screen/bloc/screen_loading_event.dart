// ignore_for_file: must_be_immutable

part of 'screen_loading_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ScreenLoading widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScreenLoadingEvent extends Equatable {}

/// Event that is dispatched when the ScreenLoading widget is first created.
class ScreenLoadingInitialEvent extends ScreenLoadingEvent {
  @override
  List<Object?> get props => [];
}
