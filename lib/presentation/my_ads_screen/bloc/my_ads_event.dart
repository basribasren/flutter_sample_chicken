// ignore_for_file: must_be_immutable

part of 'my_ads_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAds widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAdsEvent extends Equatable {}

/// Event that is dispatched when the MyAds widget is first created.
class MyAdsInitialEvent extends MyAdsEvent {
  @override
  List<Object?> get props => [];
}
