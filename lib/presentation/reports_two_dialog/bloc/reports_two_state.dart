// ignore_for_file: must_be_immutable

part of 'reports_two_bloc.dart';

/// Represents the state of ReportsTwo in the application.
class ReportsTwoState extends Equatable {
  ReportsTwoState({this.reportsTwoModelObj});

  ReportsTwoModel? reportsTwoModelObj;

  @override
  List<Object?> get props => [
        reportsTwoModelObj,
      ];
  ReportsTwoState copyWith({ReportsTwoModel? reportsTwoModelObj}) {
    return ReportsTwoState(
      reportsTwoModelObj: reportsTwoModelObj ?? this.reportsTwoModelObj,
    );
  }
}
