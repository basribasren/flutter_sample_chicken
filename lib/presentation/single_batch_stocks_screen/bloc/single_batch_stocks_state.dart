// ignore_for_file: must_be_immutable

part of 'single_batch_stocks_bloc.dart';

/// Represents the state of SingleBatchStocks in the application.
class SingleBatchStocksState extends Equatable {
  SingleBatchStocksState({this.singleBatchStocksModelObj});

  SingleBatchStocksModel? singleBatchStocksModelObj;

  @override
  List<Object?> get props => [
        singleBatchStocksModelObj,
      ];
  SingleBatchStocksState copyWith(
      {SingleBatchStocksModel? singleBatchStocksModelObj}) {
    return SingleBatchStocksState(
      singleBatchStocksModelObj:
          singleBatchStocksModelObj ?? this.singleBatchStocksModelObj,
    );
  }
}
