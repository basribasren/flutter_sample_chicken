// ignore_for_file: must_be_immutable

part of 'feed_bag_size_two_bloc.dart';

/// Represents the state of FeedBagSizeTwo in the application.
class FeedBagSizeTwoState extends Equatable {
  FeedBagSizeTwoState({
    this.weightController,
    this.feedBagSizeTwoModelObj,
  });

  TextEditingController? weightController;

  FeedBagSizeTwoModel? feedBagSizeTwoModelObj;

  @override
  List<Object?> get props => [
        weightController,
        feedBagSizeTwoModelObj,
      ];
  FeedBagSizeTwoState copyWith({
    TextEditingController? weightController,
    FeedBagSizeTwoModel? feedBagSizeTwoModelObj,
  }) {
    return FeedBagSizeTwoState(
      weightController: weightController ?? this.weightController,
      feedBagSizeTwoModelObj:
          feedBagSizeTwoModelObj ?? this.feedBagSizeTwoModelObj,
    );
  }
}
