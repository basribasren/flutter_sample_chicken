// ignore_for_file: must_be_immutable

part of 'homepage_service_buy_container_bloc.dart';

/// Represents the state of HomepageServiceBuyContainer in the application.
class HomepageServiceBuyContainerState extends Equatable {
  HomepageServiceBuyContainerState({this.homepageServiceBuyContainerModelObj});

  HomepageServiceBuyContainerModel? homepageServiceBuyContainerModelObj;

  @override
  List<Object?> get props => [
        homepageServiceBuyContainerModelObj,
      ];
  HomepageServiceBuyContainerState copyWith(
      {HomepageServiceBuyContainerModel? homepageServiceBuyContainerModelObj}) {
    return HomepageServiceBuyContainerState(
      homepageServiceBuyContainerModelObj:
          homepageServiceBuyContainerModelObj ??
              this.homepageServiceBuyContainerModelObj,
    );
  }
}
