// ignore_for_file: must_be_immutable

part of 'customer_list_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CustomerListOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CustomerListOneEvent extends Equatable {}

/// Event that is dispatched when the CustomerListOne widget is first created.
class CustomerListOneInitialEvent extends CustomerListOneEvent {
  @override
  List<Object?> get props => [];
}
