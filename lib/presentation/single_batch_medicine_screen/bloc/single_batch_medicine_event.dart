// ignore_for_file: must_be_immutable

part of 'single_batch_medicine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchMedicine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchMedicineEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchMedicine widget is first created.
class SingleBatchMedicineInitialEvent extends SingleBatchMedicineEvent {
  @override
  List<Object?> get props => [];
}
