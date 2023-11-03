// ignore_for_file: must_be_immutable

part of 'reports_one_bloc.dart';

/// Represents the state of ReportsOne in the application.
class ReportsOneState extends Equatable {
  ReportsOneState({
    this.allvalueController,
    this.reportsOneModelObj,
  });

  TextEditingController? allvalueController;

  ReportsOneModel? reportsOneModelObj;

  @override
  List<Object?> get props => [
        allvalueController,
        reportsOneModelObj,
      ];
  ReportsOneState copyWith({
    TextEditingController? allvalueController,
    ReportsOneModel? reportsOneModelObj,
  }) {
    return ReportsOneState(
      allvalueController: allvalueController ?? this.allvalueController,
      reportsOneModelObj: reportsOneModelObj ?? this.reportsOneModelObj,
    );
  }
}
