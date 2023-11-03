// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VaccinationSchedule widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VaccinationScheduleEvent extends Equatable {}

/// Event that is dispatched when the VaccinationSchedule widget is first created.
class VaccinationScheduleInitialEvent extends VaccinationScheduleEvent {
  @override
  List<Object?> get props => [];
}
