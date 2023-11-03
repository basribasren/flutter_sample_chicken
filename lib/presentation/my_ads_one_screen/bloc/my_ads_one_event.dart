// ignore_for_file: must_be_immutable

part of 'my_ads_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAdsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAdsOneEvent extends Equatable {}

/// Event that is dispatched when the MyAdsOne widget is first created.
class MyAdsOneInitialEvent extends MyAdsOneEvent {
  @override
  List<Object?> get props => [];
}
