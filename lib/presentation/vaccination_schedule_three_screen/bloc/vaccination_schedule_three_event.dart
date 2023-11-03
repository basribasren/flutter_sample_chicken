// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VaccinationScheduleThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VaccinationScheduleThreeEvent extends Equatable {}

/// Event that is dispatched when the VaccinationScheduleThree widget is first created.
class VaccinationScheduleThreeInitialEvent
    extends VaccinationScheduleThreeEvent {
  @override
  List<Object?> get props => [];
}
