// ignore_for_file: must_be_immutable

part of 'create_profile_one_bloc.dart';

/// Represents the state of CreateProfileOne in the application.
class CreateProfileOneState extends Equatable {
  CreateProfileOneState({
    this.profileUserTwoNameController,
    this.profileUserTwoEmailController,
    this.profileUserTwoNameController1,
    this.countryController,
    this.stateController,
    this.cityController,
    this.villageController,
    this.cityController1,
    this.farmController,
    this.createProfileOneModelObj,
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

  CreateProfileOneModel? createProfileOneModelObj;

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
        createProfileOneModelObj,
      ];
  CreateProfileOneState copyWith({
    TextEditingController? profileUserTwoNameController,
    TextEditingController? profileUserTwoEmailController,
    TextEditingController? profileUserTwoNameController1,
    TextEditingController? countryController,
    TextEditingController? stateController,
    TextEditingController? cityController,
    TextEditingController? villageController,
    TextEditingController? cityController1,
    TextEditingController? farmController,
    CreateProfileOneModel? createProfileOneModelObj,
  }) {
    return CreateProfileOneState(
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
      createProfileOneModelObj:
          createProfileOneModelObj ?? this.createProfileOneModelObj,
    );
  }
}
