// ignore_for_file: must_be_immutable

part of 'feed_type_one_bloc.dart';

/// Represents the state of FeedTypeOne in the application.
class FeedTypeOneState extends Equatable {
  FeedTypeOneState({this.feedTypeOneModelObj});

  FeedTypeOneModel? feedTypeOneModelObj;

  @override
  List<Object?> get props => [
        feedTypeOneModelObj,
      ];
  FeedTypeOneState copyWith({FeedTypeOneModel? feedTypeOneModelObj}) {
    return FeedTypeOneState(
      feedTypeOneModelObj: feedTypeOneModelObj ?? this.feedTypeOneModelObj,
    );
  }
}
