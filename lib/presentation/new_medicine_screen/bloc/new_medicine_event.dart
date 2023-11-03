// ignore_for_file: must_be_immutable

part of 'new_medicine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewMedicine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewMedicineEvent extends Equatable {}

/// Event that is dispatched when the NewMedicine widget is first created.
class NewMedicineInitialEvent extends NewMedicineEvent {
  @override
  List<Object?> get props => [];
}
