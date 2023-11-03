// ignore_for_file: must_be_immutable

part of 'homepage_sell_one_bloc.dart';

/// Represents the state of HomepageSellOne in the application.
class HomepageSellOneState extends Equatable {
  HomepageSellOneState({this.homepageSellOneModelObj});

  HomepageSellOneModel? homepageSellOneModelObj;

  @override
  List<Object?> get props => [
        homepageSellOneModelObj,
      ];
  HomepageSellOneState copyWith(
      {HomepageSellOneModel? homepageSellOneModelObj}) {
    return HomepageSellOneState(
      homepageSellOneModelObj:
          homepageSellOneModelObj ?? this.homepageSellOneModelObj,
    );
  }
}
