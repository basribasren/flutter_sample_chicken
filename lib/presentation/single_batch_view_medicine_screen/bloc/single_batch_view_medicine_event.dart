// ignore_for_file: must_be_immutable

part of 'single_batch_view_medicine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewMedicine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewMedicineEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewMedicine widget is first created.
class SingleBatchViewMedicineInitialEvent extends SingleBatchViewMedicineEvent {
  @override
  List<Object?> get props => [];
}
