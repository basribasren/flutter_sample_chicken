// ignore_for_file: must_be_immutable

part of 'homepage_sell_bloc.dart';

/// Represents the state of HomepageSell in the application.
class HomepageSellState extends Equatable {
  HomepageSellState({
    this.categoryLabelController,
    this.quantityLabelController,
    this.contactNumberLabelController,
    this.stateLabelController,
    this.cityController,
    this.villageLabelController,
    this.descriptionLabelController,
    this.homepageSellModelObj,
  });

  TextEditingController? categoryLabelController;

  TextEditingController? quantityLabelController;

  TextEditingController? contactNumberLabelController;

  TextEditingController? stateLabelController;

  TextEditingController? cityController;

  TextEditingController? villageLabelController;

  TextEditingController? descriptionLabelController;

  HomepageSellModel? homepageSellModelObj;

  @override
  List<Object?> get props => [
        categoryLabelController,
        quantityLabelController,
        contactNumberLabelController,
        stateLabelController,
        cityController,
        villageLabelController,
        descriptionLabelController,
        homepageSellModelObj,
      ];
  HomepageSellState copyWith({
    TextEditingController? categoryLabelController,
    TextEditingController? quantityLabelController,
    TextEditingController? contactNumberLabelController,
    TextEditingController? stateLabelController,
    TextEditingController? cityController,
    TextEditingController? villageLabelController,
    TextEditingController? descriptionLabelController,
    HomepageSellModel? homepageSellModelObj,
  }) {
    return HomepageSellState(
      categoryLabelController:
          categoryLabelController ?? this.categoryLabelController,
      quantityLabelController:
          quantityLabelController ?? this.quantityLabelController,
      contactNumberLabelController:
          contactNumberLabelController ?? this.contactNumberLabelController,
      stateLabelController: stateLabelController ?? this.stateLabelController,
      cityController: cityController ?? this.cityController,
      villageLabelController:
          villageLabelController ?? this.villageLabelController,
      descriptionLabelController:
          descriptionLabelController ?? this.descriptionLabelController,
      homepageSellModelObj: homepageSellModelObj ?? this.homepageSellModelObj,
    );
  }
}
