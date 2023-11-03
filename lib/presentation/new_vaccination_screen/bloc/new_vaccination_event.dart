// ignore_for_file: must_be_immutable

part of 'new_vaccination_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewVaccination widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewVaccinationEvent extends Equatable {}

/// Event that is dispatched when the NewVaccination widget is first created.
class NewVaccinationInitialEvent extends NewVaccinationEvent {
  @override
  List<Object?> get props => [];
}
