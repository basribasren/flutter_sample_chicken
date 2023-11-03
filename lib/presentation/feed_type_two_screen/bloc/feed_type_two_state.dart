// ignore_for_file: must_be_immutable

part of 'feed_type_two_bloc.dart';

/// Represents the state of FeedTypeTwo in the application.
class FeedTypeTwoState extends Equatable {
  FeedTypeTwoState({
    this.feedTypeNameController,
    this.feedTypeTwoModelObj,
  });

  TextEditingController? feedTypeNameController;

  FeedTypeTwoModel? feedTypeTwoModelObj;

  @override
  List<Object?> get props => [
        feedTypeNameController,
        feedTypeTwoModelObj,
      ];
  FeedTypeTwoState copyWith({
    TextEditingController? feedTypeNameController,
    FeedTypeTwoModel? feedTypeTwoModelObj,
  }) {
    return FeedTypeTwoState(
      feedTypeNameController:
          feedTypeNameController ?? this.feedTypeNameController,
      feedTypeTwoModelObj: feedTypeTwoModelObj ?? this.feedTypeTwoModelObj,
    );
  }
}
