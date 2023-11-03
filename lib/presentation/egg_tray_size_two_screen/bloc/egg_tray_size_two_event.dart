// ignore_for_file: must_be_immutable

part of 'egg_tray_size_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EggTraySizeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EggTraySizeTwoEvent extends Equatable {}

/// Event that is dispatched when the EggTraySizeTwo widget is first created.
class EggTraySizeTwoInitialEvent extends EggTraySizeTwoEvent {
  @override
  List<Object?> get props => [];
}
