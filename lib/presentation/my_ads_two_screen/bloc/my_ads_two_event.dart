// ignore_for_file: must_be_immutable

part of 'my_ads_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAdsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAdsTwoEvent extends Equatable {}

/// Event that is dispatched when the MyAdsTwo widget is first created.
class MyAdsTwoInitialEvent extends MyAdsTwoEvent {
  @override
  List<Object?> get props => [];
}
