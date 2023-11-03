// ignore_for_file: must_be_immutable

part of 'feed_type_three_bloc.dart';

/// Represents the state of FeedTypeThree in the application.
class FeedTypeThreeState extends Equatable {
  FeedTypeThreeState({
    this.feedTypeNameController,
    this.feedTypeThreeModelObj,
  });

  TextEditingController? feedTypeNameController;

  FeedTypeThreeModel? feedTypeThreeModelObj;

  @override
  List<Object?> get props => [
        feedTypeNameController,
        feedTypeThreeModelObj,
      ];
  FeedTypeThreeState copyWith({
    TextEditingController? feedTypeNameController,
    FeedTypeThreeModel? feedTypeThreeModelObj,
  }) {
    return FeedTypeThreeState(
      feedTypeNameController:
          feedTypeNameController ?? this.feedTypeNameController,
      feedTypeThreeModelObj:
          feedTypeThreeModelObj ?? this.feedTypeThreeModelObj,
    );
  }
}
