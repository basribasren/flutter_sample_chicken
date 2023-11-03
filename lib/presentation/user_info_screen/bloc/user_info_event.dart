// ignore_for_file: must_be_immutable

part of 'user_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserInfoEvent extends Equatable {}

/// Event that is dispatched when the UserInfo widget is first created.
class UserInfoInitialEvent extends UserInfoEvent {
  @override
  List<Object?> get props => [];
}
