// ignore_for_file: must_be_immutable

part of 'user_info_bloc.dart';

/// Represents the state of UserInfo in the application.
class UserInfoState extends Equatable {
  UserInfoState({
    this.profileUserTwoNameController,
    this.profileUserTwoEmailController,
    this.profileUserTwoNameController1,
    this.countryController,
    this.stateController,
    this.cityController,
    this.villageController,
    this.cityController1,
    this.farmController,
    this.userInfoModelObj,
  });

  TextEditingController? profileUserTwoNameController;

  TextEditingController? profileUserTwoEmailController;

  TextEditingController? profileUserTwoNameController1;

  TextEditingController? countryController;

  TextEditingController? stateController;

  TextEditingController? cityController;

  TextEditingController? villageController;

  TextEditingController? cityController1;

  TextEditingController? farmController;

  UserInfoModel? userInfoModelObj;

  @override
  List<Object?> get props => [
        profileUserTwoNameController,
        profileUserTwoEmailController,
        profileUserTwoNameController1,
        countryController,
        stateController,
        cityController,
        villageController,
        cityController1,
        farmController,
        userInfoModelObj,
      ];
  UserInfoState copyWith({
    TextEditingController? profileUserTwoNameController,
    TextEditingController? profileUserTwoEmailController,
    TextEditingController? profileUserTwoNameController1,
    TextEditingController? countryController,
    TextEditingController? stateController,
    TextEditingController? cityController,
    TextEditingController? villageController,
    TextEditingController? cityController1,
    TextEditingController? farmController,
    UserInfoModel? userInfoModelObj,
  }) {
    return UserInfoState(
      profileUserTwoNameController:
          profileUserTwoNameController ?? this.profileUserTwoNameController,
      profileUserTwoEmailController:
          profileUserTwoEmailController ?? this.profileUserTwoEmailController,
      profileUserTwoNameController1:
          profileUserTwoNameController1 ?? this.profileUserTwoNameController1,
      countryController: countryController ?? this.countryController,
      stateController: stateController ?? this.stateController,
      cityController: cityController ?? this.cityController,
      villageController: villageController ?? this.villageController,
      cityController1: cityController1 ?? this.cityController1,
      farmController: farmController ?? this.farmController,
      userInfoModelObj: userInfoModelObj ?? this.userInfoModelObj,
    );
  }
}
