// ignore_for_file: must_be_immutable

part of 'my_ads_one_bloc.dart';

/// Represents the state of MyAdsOne in the application.
class MyAdsOneState extends Equatable {
  MyAdsOneState({this.myAdsOneModelObj});

  MyAdsOneModel? myAdsOneModelObj;

  @override
  List<Object?> get props => [
        myAdsOneModelObj,
      ];
  MyAdsOneState copyWith({MyAdsOneModel? myAdsOneModelObj}) {
    return MyAdsOneState(
      myAdsOneModelObj: myAdsOneModelObj ?? this.myAdsOneModelObj,
    );
  }
}
