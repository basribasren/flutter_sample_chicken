// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VaccinationScheduleFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VaccinationScheduleFiveEvent extends Equatable {}

/// Event that is dispatched when the VaccinationScheduleFive widget is first created.
class VaccinationScheduleFiveInitialEvent extends VaccinationScheduleFiveEvent {
  @override
  List<Object?> get props => [];
}
