// ignore_for_file: must_be_immutable

part of 'create_profile_bloc.dart';

/// Represents the state of CreateProfile in the application.
class CreateProfileState extends Equatable {
  CreateProfileState({
    this.profileUserTwoNameController,
    this.profileUserTwoEmailController,
    this.profileUserTwoNameController1,
    this.countryEditTextController,
    this.stateEditTextController,
    this.cityEditTextController,
    this.villageEditTextController,
    this.cityEditTextController1,
    this.farmEditTextController,
    this.createProfileModelObj,
  });

  TextEditingController? profileUserTwoNameController;

  TextEditingController? profileUserTwoEmailController;

  TextEditingController? profileUserTwoNameController1;

  TextEditingController? countryEditTextController;

  TextEditingController? stateEditTextController;

  TextEditingController? cityEditTextController;

  TextEditingController? villageEditTextController;

  TextEditingController? cityEditTextController1;

  TextEditingController? farmEditTextController;

  CreateProfileModel? createProfileModelObj;

  @override
  List<Object?> get props => [
        profileUserTwoNameController,
        profileUserTwoEmailController,
        profileUserTwoNameController1,
        countryEditTextController,
        stateEditTextController,
        cityEditTextController,
        villageEditTextController,
        cityEditTextController1,
        farmEditTextController,
        createProfileModelObj,
      ];
  CreateProfileState copyWith({
    TextEditingController? profileUserTwoNameController,
    TextEditingController? profileUserTwoEmailController,
    TextEditingController? profileUserTwoNameController1,
    TextEditingController? countryEditTextController,
    TextEditingController? stateEditTextController,
    TextEditingController? cityEditTextController,
    TextEditingController? villageEditTextController,
    TextEditingController? cityEditTextController1,
    TextEditingController? farmEditTextController,
    CreateProfileModel? createProfileModelObj,
  }) {
    return CreateProfileState(
      profileUserTwoNameController:
          profileUserTwoNameController ?? this.profileUserTwoNameController,
      profileUserTwoEmailController:
          profileUserTwoEmailController ?? this.profileUserTwoEmailController,
      profileUserTwoNameController1:
          profileUserTwoNameController1 ?? this.profileUserTwoNameController1,
      countryEditTextController:
          countryEditTextController ?? this.countryEditTextController,
      stateEditTextController:
          stateEditTextController ?? this.stateEditTextController,
      cityEditTextController:
          cityEditTextController ?? this.cityEditTextController,
      villageEditTextController:
          villageEditTextController ?? this.villageEditTextController,
      cityEditTextController1:
          cityEditTextController1 ?? this.cityEditTextController1,
      farmEditTextController:
          farmEditTextController ?? this.farmEditTextController,
      createProfileModelObj:
          createProfileModelObj ?? this.createProfileModelObj,
    );
  }
}
