// ignore_for_file: must_be_immutable

part of 'egg_tray_size_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EggTraySize widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EggTraySizeEvent extends Equatable {}

/// Event that is dispatched when the EggTraySize widget is first created.
class EggTraySizeInitialEvent extends EggTraySizeEvent {
  @override
  List<Object?> get props => [];
}
