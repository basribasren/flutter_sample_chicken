// ignore_for_file: must_be_immutable

part of 'feed_bag_size_one_bloc.dart';

/// Represents the state of FeedBagSizeOne in the application.
class FeedBagSizeOneState extends Equatable {
  FeedBagSizeOneState({this.feedBagSizeOneModelObj});

  FeedBagSizeOneModel? feedBagSizeOneModelObj;

  @override
  List<Object?> get props => [
        feedBagSizeOneModelObj,
      ];
  FeedBagSizeOneState copyWith({FeedBagSizeOneModel? feedBagSizeOneModelObj}) {
    return FeedBagSizeOneState(
      feedBagSizeOneModelObj:
          feedBagSizeOneModelObj ?? this.feedBagSizeOneModelObj,
    );
  }
}
