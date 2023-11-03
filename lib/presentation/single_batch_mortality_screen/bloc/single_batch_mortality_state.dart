// ignore_for_file: must_be_immutable

part of 'single_batch_mortality_bloc.dart';

/// Represents the state of SingleBatchMortality in the application.
class SingleBatchMortalityState extends Equatable {
  SingleBatchMortalityState({
    this.dateEditTextController,
    this.mortalityValueEditTextController,
    this.descriptionValueEditTextController,
    this.singleBatchMortalityModelObj,
  });

  TextEditingController? dateEditTextController;

  TextEditingController? mortalityValueEditTextController;

  TextEditingController? descriptionValueEditTextController;

  SingleBatchMortalityModel? singleBatchMortalityModelObj;

  @override
  List<Object?> get props => [
        dateEditTextController,
        mortalityValueEditTextController,
        descriptionValueEditTextController,
        singleBatchMortalityModelObj,
      ];
  SingleBatchMortalityState copyWith({
    TextEditingController? dateEditTextController,
    TextEditingController? mortalityValueEditTextController,
    TextEditingController? descriptionValueEditTextController,
    SingleBatchMortalityModel? singleBatchMortalityModelObj,
  }) {
    return SingleBatchMortalityState(
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      mortalityValueEditTextController: mortalityValueEditTextController ??
          this.mortalityValueEditTextController,
      descriptionValueEditTextController: descriptionValueEditTextController ??
          this.descriptionValueEditTextController,
      singleBatchMortalityModelObj:
          singleBatchMortalityModelObj ?? this.singleBatchMortalityModelObj,
    );
  }
}
