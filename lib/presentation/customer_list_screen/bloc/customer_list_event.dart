// ignore_for_file: must_be_immutable

part of 'customer_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CustomerList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CustomerListEvent extends Equatable {}

/// Event that is dispatched when the CustomerList widget is first created.
class CustomerListInitialEvent extends CustomerListEvent {
  @override
  List<Object?> get props => [];
}
