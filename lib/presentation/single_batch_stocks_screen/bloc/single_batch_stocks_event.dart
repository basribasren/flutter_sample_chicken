// ignore_for_file: must_be_immutable

part of 'single_batch_stocks_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchStocks widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchStocksEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchStocks widget is first created.
class SingleBatchStocksInitialEvent extends SingleBatchStocksEvent {
  @override
  List<Object?> get props => [];
}
