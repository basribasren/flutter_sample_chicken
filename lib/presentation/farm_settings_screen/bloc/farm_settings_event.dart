// ignore_for_file: must_be_immutable

part of 'farm_settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FarmSettings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FarmSettingsEvent extends Equatable {}

/// Event that is dispatched when the FarmSettings widget is first created.
class FarmSettingsInitialEvent extends FarmSettingsEvent {
  @override
  List<Object?> get props => [];
}
