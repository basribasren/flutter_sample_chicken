// ignore_for_file: must_be_immutable

part of 'create_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateProfileEvent extends Equatable {}

/// Event that is dispatched when the CreateProfile widget is first created.
class CreateProfileInitialEvent extends CreateProfileEvent {
  @override
  List<Object?> get props => [];
}
