// ignore_for_file: must_be_immutable

part of 'create_profile_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateProfileOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateProfileOneEvent extends Equatable {}

/// Event that is dispatched when the CreateProfileOne widget is first created.
class CreateProfileOneInitialEvent extends CreateProfileOneEvent {
  @override
  List<Object?> get props => [];
}
