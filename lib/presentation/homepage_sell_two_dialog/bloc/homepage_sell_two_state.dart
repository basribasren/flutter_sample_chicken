// ignore_for_file: must_be_immutable

part of 'homepage_sell_two_bloc.dart';

/// Represents the state of HomepageSellTwo in the application.
class HomepageSellTwoState extends Equatable {
  HomepageSellTwoState({this.homepageSellTwoModelObj});

  HomepageSellTwoModel? homepageSellTwoModelObj;

  @override
  List<Object?> get props => [
        homepageSellTwoModelObj,
      ];
  HomepageSellTwoState copyWith(
      {HomepageSellTwoModel? homepageSellTwoModelObj}) {
    return HomepageSellTwoState(
      homepageSellTwoModelObj:
          homepageSellTwoModelObj ?? this.homepageSellTwoModelObj,
    );
  }
}
