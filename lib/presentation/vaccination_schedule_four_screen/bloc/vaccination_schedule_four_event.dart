// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VaccinationScheduleFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VaccinationScheduleFourEvent extends Equatable {}

/// Event that is dispatched when the VaccinationScheduleFour widget is first created.
class VaccinationScheduleFourInitialEvent extends VaccinationScheduleFourEvent {
  @override
  List<Object?> get props => [];
}
