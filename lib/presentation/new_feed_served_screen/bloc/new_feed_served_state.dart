// ignore_for_file: must_be_immutable

part of 'new_feed_served_bloc.dart';

/// Represents the state of NewFeedServed in the application.
class NewFeedServedState extends Equatable {
  NewFeedServedState({this.newFeedServedModelObj});

  NewFeedServedModel? newFeedServedModelObj;

  @override
  List<Object?> get props => [
        newFeedServedModelObj,
      ];
  NewFeedServedState copyWith({NewFeedServedModel? newFeedServedModelObj}) {
    return NewFeedServedState(
      newFeedServedModelObj:
          newFeedServedModelObj ?? this.newFeedServedModelObj,
    );
  }
}
