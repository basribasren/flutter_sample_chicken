// ignore_for_file: must_be_immutable

part of 'homepage_service_buy_bloc.dart';

/// Represents the state of HomepageServiceBuy in the application.
class HomepageServiceBuyState extends Equatable {
  HomepageServiceBuyState({this.homepageServiceBuyModelObj});

  HomepageServiceBuyModel? homepageServiceBuyModelObj;

  @override
  List<Object?> get props => [
        homepageServiceBuyModelObj,
      ];
  HomepageServiceBuyState copyWith(
      {HomepageServiceBuyModel? homepageServiceBuyModelObj}) {
    return HomepageServiceBuyState(
      homepageServiceBuyModelObj:
          homepageServiceBuyModelObj ?? this.homepageServiceBuyModelObj,
    );
  }
}
