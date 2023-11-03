// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VaccinationScheduleSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VaccinationScheduleSixEvent extends Equatable {}

/// Event that is dispatched when the VaccinationScheduleSix widget is first created.
class VaccinationScheduleSixInitialEvent extends VaccinationScheduleSixEvent {
  @override
  List<Object?> get props => [];
}
