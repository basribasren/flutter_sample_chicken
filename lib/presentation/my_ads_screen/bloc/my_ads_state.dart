// ignore_for_file: must_be_immutable

part of 'my_ads_bloc.dart';

/// Represents the state of MyAds in the application.
class MyAdsState extends Equatable {
  MyAdsState({this.myAdsModelObj});

  MyAdsModel? myAdsModelObj;

  @override
  List<Object?> get props => [
        myAdsModelObj,
      ];
  MyAdsState copyWith({MyAdsModel? myAdsModelObj}) {
    return MyAdsState(
      myAdsModelObj: myAdsModelObj ?? this.myAdsModelObj,
    );
  }
}
