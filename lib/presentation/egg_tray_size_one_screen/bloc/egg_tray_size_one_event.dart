// ignore_for_file: must_be_immutable

part of 'egg_tray_size_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EggTraySizeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EggTraySizeOneEvent extends Equatable {}

/// Event that is dispatched when the EggTraySizeOne widget is first created.
class EggTraySizeOneInitialEvent extends EggTraySizeOneEvent {
  @override
  List<Object?> get props => [];
}
