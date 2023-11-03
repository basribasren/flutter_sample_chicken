// ignore_for_file: must_be_immutable

part of 'homepage_service_buy_one_bloc.dart';

/// Represents the state of HomepageServiceBuyOne in the application.
class HomepageServiceBuyOneState extends Equatable {
  HomepageServiceBuyOneState({
    this.searchController,
    this.homepageServiceBuyOneModelObj,
  });

  TextEditingController? searchController;

  HomepageServiceBuyOneModel? homepageServiceBuyOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homepageServiceBuyOneModelObj,
      ];
  HomepageServiceBuyOneState copyWith({
    TextEditingController? searchController,
    HomepageServiceBuyOneModel? homepageServiceBuyOneModelObj,
  }) {
    return HomepageServiceBuyOneState(
      searchController: searchController ?? this.searchController,
      homepageServiceBuyOneModelObj:
          homepageServiceBuyOneModelObj ?? this.homepageServiceBuyOneModelObj,
    );
  }
}
