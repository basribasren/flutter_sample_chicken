// ignore_for_file: must_be_immutable

part of 'new_sub_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewSubUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewSubUserEvent extends Equatable {}

/// Event that is dispatched when the NewSubUser widget is first created.
class NewSubUserInitialEvent extends NewSubUserEvent {
  @override
  List<Object?> get props => [];
}
