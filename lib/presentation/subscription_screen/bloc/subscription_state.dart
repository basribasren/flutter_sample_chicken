// ignore_for_file: must_be_immutable

part of 'subscription_bloc.dart';

/// Represents the state of Subscription in the application.
class SubscriptionState extends Equatable {
  SubscriptionState({this.subscriptionModelObj});

  SubscriptionModel? subscriptionModelObj;

  @override
  List<Object?> get props => [
        subscriptionModelObj,
      ];
  SubscriptionState copyWith({SubscriptionModel? subscriptionModelObj}) {
    return SubscriptionState(
      subscriptionModelObj: subscriptionModelObj ?? this.subscriptionModelObj,
    );
  }
}
