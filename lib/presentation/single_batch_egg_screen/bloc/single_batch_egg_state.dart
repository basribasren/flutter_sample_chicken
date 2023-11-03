// ignore_for_file: must_be_immutable

part of 'single_batch_egg_bloc.dart';

/// Represents the state of SingleBatchEgg in the application.
class SingleBatchEggState extends Equatable {
  SingleBatchEggState({
    this.dateEditTextController,
    this.eggTrayCollectionEditTextController,
    this.pulletEggsEditTextController,
    this.brokenEggsEditTextController,
    this.descriptionEditTextController,
    this.singleBatchEggModelObj,
  });

  TextEditingController? dateEditTextController;

  TextEditingController? eggTrayCollectionEditTextController;

  TextEditingController? pulletEggsEditTextController;

  TextEditingController? brokenEggsEditTextController;

  TextEditingController? descriptionEditTextController;

  SingleBatchEggModel? singleBatchEggModelObj;

  @override
  List<Object?> get props => [
        dateEditTextController,
        eggTrayCollectionEditTextController,
        pulletEggsEditTextController,
        brokenEggsEditTextController,
        descriptionEditTextController,
        singleBatchEggModelObj,
      ];
  SingleBatchEggState copyWith({
    TextEditingController? dateEditTextController,
    TextEditingController? eggTrayCollectionEditTextController,
    TextEditingController? pulletEggsEditTextController,
    TextEditingController? brokenEggsEditTextController,
    TextEditingController? descriptionEditTextController,
    SingleBatchEggModel? singleBatchEggModelObj,
  }) {
    return SingleBatchEggState(
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      eggTrayCollectionEditTextController:
          eggTrayCollectionEditTextController ??
              this.eggTrayCollectionEditTextController,
      pulletEggsEditTextController:
          pulletEggsEditTextController ?? this.pulletEggsEditTextController,
      brokenEggsEditTextController:
          brokenEggsEditTextController ?? this.brokenEggsEditTextController,
      descriptionEditTextController:
          descriptionEditTextController ?? this.descriptionEditTextController,
      singleBatchEggModelObj:
          singleBatchEggModelObj ?? this.singleBatchEggModelObj,
    );
  }
}
