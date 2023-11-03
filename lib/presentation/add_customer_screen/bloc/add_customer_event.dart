// ignore_for_file: must_be_immutable

part of 'add_customer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddCustomer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddCustomerEvent extends Equatable {}

/// Event that is dispatched when the AddCustomer widget is first created.
class AddCustomerInitialEvent extends AddCustomerEvent {
  @override
  List<Object?> get props => [];
}
