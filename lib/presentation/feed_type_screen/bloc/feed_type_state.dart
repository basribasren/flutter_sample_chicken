// ignore_for_file: must_be_immutable

part of 'feed_type_bloc.dart';

/// Represents the state of FeedType in the application.
class FeedTypeState extends Equatable {
  FeedTypeState({this.feedTypeModelObj});

  FeedTypeModel? feedTypeModelObj;

  @override
  List<Object?> get props => [
        feedTypeModelObj,
      ];
  FeedTypeState copyWith({FeedTypeModel? feedTypeModelObj}) {
    return FeedTypeState(
      feedTypeModelObj: feedTypeModelObj ?? this.feedTypeModelObj,
    );
  }
}
