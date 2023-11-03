// ignore_for_file: must_be_immutable

part of 'single_batch_view_mortality_bloc.dart';

/// Represents the state of SingleBatchViewMortality in the application.
class SingleBatchViewMortalityState extends Equatable {
  SingleBatchViewMortalityState({this.singleBatchViewMortalityModelObj});

  SingleBatchViewMortalityModel? singleBatchViewMortalityModelObj;

  @override
  List<Object?> get props => [
        singleBatchViewMortalityModelObj,
      ];
  SingleBatchViewMortalityState copyWith(
      {SingleBatchViewMortalityModel? singleBatchViewMortalityModelObj}) {
    return SingleBatchViewMortalityState(
      singleBatchViewMortalityModelObj: singleBatchViewMortalityModelObj ??
          this.singleBatchViewMortalityModelObj,
    );
  }
}
