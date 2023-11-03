// ignore_for_file: must_be_immutable

part of 'feed_bag_size_bloc.dart';

/// Represents the state of FeedBagSize in the application.
class FeedBagSizeState extends Equatable {
  FeedBagSizeState({this.feedBagSizeModelObj});

  FeedBagSizeModel? feedBagSizeModelObj;

  @override
  List<Object?> get props => [
        feedBagSizeModelObj,
      ];
  FeedBagSizeState copyWith({FeedBagSizeModel? feedBagSizeModelObj}) {
    return FeedBagSizeState(
      feedBagSizeModelObj: feedBagSizeModelObj ?? this.feedBagSizeModelObj,
    );
  }
}
