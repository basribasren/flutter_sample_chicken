// ignore_for_file: must_be_immutable

part of 'currency_bloc.dart';

/// Represents the state of Currency in the application.
class CurrencyState extends Equatable {
  CurrencyState({
    this.searchController,
    this.currencyModelObj,
  });

  TextEditingController? searchController;

  CurrencyModel? currencyModelObj;

  @override
  List<Object?> get props => [
        searchController,
        currencyModelObj,
      ];
  CurrencyState copyWith({
    TextEditingController? searchController,
    CurrencyModel? currencyModelObj,
  }) {
    return CurrencyState(
      searchController: searchController ?? this.searchController,
      currencyModelObj: currencyModelObj ?? this.currencyModelObj,
    );
  }
}
