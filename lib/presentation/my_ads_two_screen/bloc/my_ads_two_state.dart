// ignore_for_file: must_be_immutable

part of 'my_ads_two_bloc.dart';

/// Represents the state of MyAdsTwo in the application.
class MyAdsTwoState extends Equatable {
  MyAdsTwoState({
    this.categoryController,
    this.quantityController,
    this.contactNumberController,
    this.stateController,
    this.cityController,
    this.villageController,
    this.descriptionController,
    this.myAdsTwoModelObj,
  });

  TextEditingController? categoryController;

  TextEditingController? quantityController;

  TextEditingController? contactNumberController;

  TextEditingController? stateController;

  TextEditingController? cityController;

  TextEditingController? villageController;

  TextEditingController? descriptionController;

  MyAdsTwoModel? myAdsTwoModelObj;

  @override
  List<Object?> get props => [
        categoryController,
        quantityController,
        contactNumberController,
        stateController,
        cityController,
        villageController,
        descriptionController,
        myAdsTwoModelObj,
      ];
  MyAdsTwoState copyWith({
    TextEditingController? categoryController,
    TextEditingController? quantityController,
    TextEditingController? contactNumberController,
    TextEditingController? stateController,
    TextEditingController? cityController,
    TextEditingController? villageController,
    TextEditingController? descriptionController,
    MyAdsTwoModel? myAdsTwoModelObj,
  }) {
    return MyAdsTwoState(
      categoryController: categoryController ?? this.categoryController,
      quantityController: quantityController ?? this.quantityController,
      contactNumberController:
          contactNumberController ?? this.contactNumberController,
      stateController: stateController ?? this.stateController,
      cityController: cityController ?? this.cityController,
      villageController: villageController ?? this.villageController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      myAdsTwoModelObj: myAdsTwoModelObj ?? this.myAdsTwoModelObj,
    );
  }
}
