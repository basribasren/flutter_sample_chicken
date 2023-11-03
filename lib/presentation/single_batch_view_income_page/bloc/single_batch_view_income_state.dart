// ignore_for_file: must_be_immutable

part of 'single_batch_view_income_bloc.dart';

/// Represents the state of SingleBatchViewIncome in the application.
class SingleBatchViewIncomeState extends Equatable {
  SingleBatchViewIncomeState({
    this.searchController,
    this.singleBatchViewIncomeModelObj,
  });

  TextEditingController? searchController;

  SingleBatchViewIncomeModel? singleBatchViewIncomeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        singleBatchViewIncomeModelObj,
      ];
  SingleBatchViewIncomeState copyWith({
    TextEditingController? searchController,
    SingleBatchViewIncomeModel? singleBatchViewIncomeModelObj,
  }) {
    return SingleBatchViewIncomeState(
      searchController: searchController ?? this.searchController,
      singleBatchViewIncomeModelObj:
          singleBatchViewIncomeModelObj ?? this.singleBatchViewIncomeModelObj,
    );
  }
}
