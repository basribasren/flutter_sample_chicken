// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VaccinationScheduleTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VaccinationScheduleTwoEvent extends Equatable {}

/// Event that is dispatched when the VaccinationScheduleTwo widget is first created.
class VaccinationScheduleTwoInitialEvent extends VaccinationScheduleTwoEvent {
  @override
  List<Object?> get props => [];
}
